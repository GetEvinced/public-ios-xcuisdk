# Evinced SDK for XCUITest Pipelines

## Introduction

The Evinced XCUI SDK integrates with new or existing UI tests to automatically detect accessibility issues in your iOS applications. With just a few lines of code, you can analyze your entire application to understand how it can become more accessible. At the conclusion of the tests, actionable HTML and JSON reports are generated to help you track and fix issues.

## Prerequisites

- **Evinced Account**: Create an [Evinced account](https://hub.evinced.com/login) to obtain your `serviceAccountId` and `apiKey`. These credentials are required to initialize the SDK and validate access with Evinced servers when running your tests. If an outbound internet connection is not available in your testing environment, contact us at [support@evinced.com](mailto:support@evinced.com) to get an offline `apiKey`.

- **UI Testing Setup**: Ensure you have UI testing set up for your application using pure XCUITest SDK.

## Installation

You can add the Evinced XCUI SDK to your UI tests target via [CocoaPods](https://cocoapods.org/) or [Swift Package Manager](https://swift.org/package-manager/).

### CocoaPods

1. Add the following line to your UI Test target in your `Podfile`:

   ```ruby
   pod 'EvincedXCUISDK'
   ```

2. Run `pod install`.

### Swift Package Manager

Using Swift Package Manager is also supported and is the preferred method.

1. In Xcode, go to **File > Add Packages...**

2. Enter the repository URL:

   ```
   https://github.com/GetEvinced/public-ios-xcuisdk
   ```

3. Choose the latest version and add it to your UI tests target.

## Setup

To set up the Evinced XCUI SDK, you need to initialize it in your `setUpWithError()` method and generate reports in your `tearDownWithError()` method.

### Initialize the SDK

Add the import statement to the beginning of your test file:

```swift
import EvincedXCUISDK
```

In your `setUpWithError()` method, initialize the SDK with your credentials:

```swift
override func setUpWithError() throws {
    EvincedEngine.testCase = self
    try EvincedEngine.setupCredentials(serviceAccountId: "your_service_account_id",
                                       apiKey: "your_api_key")
    // Other setup code...
}
```

If you are using an offline `apiKey`, use:

```swift
try EvincedEngine.setupOfflineCredentials(serviceAccountId: "your_service_account_id",
                                          accessToken: "your_access_token")
```

### Generate Reports

In your `tearDownWithError()` method, generate the accessibility reports:

```swift
override func tearDownWithError() throws {
    // This method will validate the stored accessibility data and generate an HTML report without failing the test.
    // Use `assert: true` if you prefer to fail the test if an accessibility issue is found.
    try EvincedEngine.reportStored(assert: false)
    // Other tear down code...
}
```

## Writing Tests

Within your test methods, you can use the Evinced XCUI SDK to perform accessibility scans at different points in your application.

### Analyzing Screens

To capture the accessibility state of your application at specific points, use the `evAnalyze()` method:

```swift
func testExample() throws {
    let app = XCUIApplication()
    app.launch()
    // Perform actions...
    try app.evAnalyze()
    // Perform more actions...
    try app.evAnalyze()
}
```

The `evAnalyze()` method stores the accessibility data for later validation.

### Generating Reports Immediately

If you want to generate and obtain the accessibility report immediately at a specific point in your test, you can use the `evReport()` method on your `XCUIApplication` instance:

```swift
func testExample() throws {
    let app = XCUIApplication()
    app.launch()
    // Perform actions...
    let report = try app.evReport(assert: false)
    // You can use the `report` object as needed
}
```

Alternatively, you can use the static `EvincedEngine.report()` method:

```swift
let report = try EvincedEngine.report(assert: false)
```

These methods analyze the current state of the application, generate the accessibility report, and attach it to the test results.

### Continuous Mode

Continuous Mode allows you to automatically scan the application for accessibility issues after each UI interaction without manually inserting scan calls. To use Continuous Mode, start and stop the analysis using `EvincedEngine.startAnalyze()` and `EvincedEngine.stopAnalyze()`:

```swift
func testContinuousMode() throws {
    EvincedEngine.startAnalyze()
    let app = XCUIApplication()
    app.launch()
    // Perform UI interactions...
    app.buttons["Next"].tap()
    // More interactions...
    EvincedEngine.stopAnalyze()
}
```

After calling `stopAnalyze()`, make sure to call `reportStored()` to generate the reports:

```swift
override func tearDownWithError() throws {
    try EvincedEngine.reportStored(assert: false)
    // Other tear down code...
}
```

#### Async usage

Due to known limitations of Apple platform, please use public interface in background threads and async calls with care. Please make sure you use `XCTestExpectation` in async calls:

```swift
let expectation = expectation(description: "Accessibility analyze")
DispatchQueue.main.async {
    try app.evAnalyze()

    expectation.fulfill()
}
waitForExpectations(timeout: 5.0)
```

## Accessing Reports

After the tests finish, the Evinced SDK generates accessibility HTML and JSON reports, which are stored as [test attachments](https://developer.apple.com/documentation/xctest/activities_and_attachments/adding_attachments_to_tests_activities_and_issues).

You can access and save them via the Xcode GUI or extract them using the [Xcode Result Parsers](https://developer.evinced.com/sdks-for-mobile-apps/xcui-sdk#xcoderesultparsers).

## Additional Resources

For more details and examples, please see our official [XCUI SDK documentation](https://developer.evinced.com/sdks-for-mobile-apps/xcuitest-sdk).

## Support

If you need assistance or an offline `apiKey`, please contact us at [support@evinced.com](mailto:support@evinced.com).