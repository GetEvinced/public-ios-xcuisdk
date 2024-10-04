# Evinced SDK for XCUITests pipelines

## Introduction
The Evinced XCUI SDK integrates with new or existing UI tests to automatically detect accessibility issues. With the addition of a few lines of code, you can analyze your entire application to understand how it can become more accessible. At the conclusion of the tests, actionable HTML and JSON reports are generated to track issues in any reporting tool.

## Getting started

### Prerequisites

In order to use any of the Evinced Mobile SDKs you first need to create an [Evinced account](https://hub.evinced.com/login). Once your account is created, you will get your apiKey and a matching serviceAccountId. Initialize the SDK with these values it will validate access with Evinced servers when you run your tests.
If an outbound internet connection is not available in your running environment - contact us at support@evinced.com to get an offline APIKey.

You should have any UI testing set up for your application with usage of pure XCUITest SDK.
You should add `EvincedXCUISDK` whether via [Cocoapods](https://cocoapods.org/) or [Swift Package Manager](https://swift.org/package-manager/) to your UI tests target.

#### Cocoapods
1. Add the following line you your UI Test target in `Podfile`: `pod 'EvincedXCUISDK'`
2. Run `pod install`

#### Swift Package Manager
Using Swift Package Manager is preferable.
1. Add [https://github.com/GetEvinced/public-ios-xcuisdk](https://github.com/GetEvinced/public-ios-xcuisdk) as new Swift package in Xcode GUI.
2. Select your UI tests target `EvincedXCUISDK` to link with.

### Setup
In order to setup `EvincedXCUISDK` you will need to add the following code to setup and teardown methods in your tests, just like this:

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

    // Use flag `assert: true` if you prefer to fail the test if an accessibility issue is found.    
    try EvincedEngine.reportStored(assert: false)

    // Other tear down code...
}
```
### Your first test
In the tests body add invocations of `application.accessibilityAnalyze()` or `application.evAnalyze()` over `XCUIApplication` instance of the tested app at the places/states of the app you want to test. A good place to add testing may be after simulating taps or screen change.
After that just run your test suite(s).

#### Async usage
Due to known limitations of Apple platform, please use public interface in background threads and async calls with care. Please make sure you use `XCTestExpectation` in async calls:
```
let expectation = expectation(description: "Accessibility analyze")
DispatchQueue.main.async {
    try app.evAnalyze()

    expectation.fulfill()
}
waitForExpectations(timeout: 5.0)
```

### The Evinced Report
After the test finishes `EvincedEngine.reportStored(assert:)` would generate accessibility HTML reports which are stored as [test attachments](https://developer.apple.com/documentation/xctest/activities_and_attachments/adding_attachments_to_tests_activities_and_issues). You could check and save them via Xcode GUI or `xcrun xcresulttool ...` CLI command.

### Documentation
Please see our official [XCUI SDK](https://developer.evinced.com/sdks-for-mobile-apps/xcuitest-sdk) documentation page for more details and examples.
