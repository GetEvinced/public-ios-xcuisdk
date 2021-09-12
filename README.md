# Evinced SDK for XCUITests pipelines

## Introduction
Evinced SDK is a product automation accessibility testing and analyzing for XCUITest pipelines.

## Getting started

### Prerequisites
You should have any UI testing set up for your application with usage of pure XCUITest SDK.
You should add `EvincedXCUISDK` wether via [Cocoapods](https://cocoapods.org/) or [Swift Package Manager](https://swift.org/package-manager/) to your UI tests target.

#### Cocoapods
1. Add the following line you your UI Test target in `Podfile`: `pod 'EvincedXCUISDK'`
2. Run `pod install`

#### Swift Package Manager
Using Swift Package Manager is preferable.
1. Add [https://github.com/GetEvinced/public-ios-xcuisdk](https://github.com/GetEvinced/public-ios-xcuisdk) as new Swift package in Xcode GUI.
2. Select your UI tests target `EvincedXCUISDK` to link with.

### Setup
In order to setup `EvincedXCUISDK` you will need to add the followin code to setup and teardown methods in your tests, jsut like this:

```
override func setUpWithError() throws {
    EvincedEngine.testCase = self
    try EvincedEngine.setupCredentials(serviceAccountId: "your_service_account_id",
                                       apiKey: "your_api_key")
    // Other setup code..
}
```

```
override func tearDownWithError() throws {
    // This method will validate the stored accessibility data and generate an HTML report without failing the test.
    
    // Use flag `assert: true` if you prefert to fail the test if an accessibility issue is found.    
    try EvincedEngine.reportStored(assert: false)
    
    // Other tear down code...
}
```
### Your first test
In the tests body add invocations of `application.accessibilityAnalize()` or `application.evAnalyze()` over `XCUIApplication` instance of the tested app at the places/states of the app you want to test. A good place to add testing may be after simulatin taps or screen change.
After that just run your test suite(s).

#### Async usage
Due to known limitations of Aplle platform, please use public interface in background threads and async calls with care. Please make shure you use `XCTestExpectation` in async calls:
```
let expectation = expectation(description: "Accessibility analyze")
DispatchQueue.main.async {
    try app.evAnalyze()
    
    expectation.fulfill()
}
waitForExpectations(timeout: 5.0)
```

### The Evinced Report
After the test finhishes `EvincedEngine.reportStored(assert:)` would generate accessibility HTML reports which are stored as [test attachments](https://developer.apple.com/documentation/xctest/activities_and_attachments/adding_attachments_to_tests_activities_and_issues). You could check and save them via Xcode GUI or `xcrun xcresulttool ...` CLI command.
