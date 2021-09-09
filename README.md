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
1. Add https://github.com/GetEvinced/public-ios-xcuisdk repository as new Swift package in Xcode GUI.
2. Select your UI tests target `EvincedXCUISDK` to link with.

### Setup
In order to setup `EvincedXCUISDK` you will need to add the followin code to setup and teardown methods in your tests, jsut like this:

```
override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    EvincedEngine.testCase = self

    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    // Other setup code..
}
```

```
override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.

    // This method will just validate the stored accessibility data and generate HTML report without failing the test.
    // You could use `assertStored()` if you prefert to fail the test.    
    EvincedEngine.validateStored()

    // Other tear down code...
}
```
### Your first test
In the tests body add invocations of `application.accessibilityAnalize()` or `application.evAssert()` over `XCUIApplication` instance of the tested app at the places/states of the app you want to test. A good place to add testing may be after simulatin taps or screen change.
After that just run your test suite(s).

#### Async usage
Due to known limitations of Aplle platform, please use public interface in background threads and async calls with care. Please make shure you use `XCTestExpectation` in async calls:
```
let expectation = expectation(description: "Accessibility analyze")
DispatchQueue.main.async {
    app.evAnalyze()
    
    expectation.fulfill()
}
waitForExpectations(timeout: 5.0)
```

### The Evinced Report
After the test finhishes `EvincedEngine.validateStored()` or `EvincedEngine.assertStored()` would generate accessibility HTML reports which are stored as [test attachments](https://developer.apple.com/documentation/xctest/activities_and_attachments/adding_attachments_to_tests_activities_and_issues). You could check and save them via Xcode GUI or `xcrun xcresulttool ...` CLI command.
