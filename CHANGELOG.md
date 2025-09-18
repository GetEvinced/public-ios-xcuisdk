# XCUI SDK Changelog

## [1.31.1] - 2025-09-18
- Improve elements detection for non-visible components.

## [1.31.0] - 2025-09-16
- Baseline Comparison Enhancements: Introduce new baseline flow, enhance IgnoreFilters capabilities, and Automate test failure logic.

## [1.30.0] - 2025-09-09
- Added support for React Native
- Increased minimum iOS deployment target to 15.0

## [1.29.0] - 2025-07-28
- Added Baseline Report Comparison: You can now compare the results of your latest accessibility scan against a predefined baseline report, making it easier to identify a11y regressions and track changes over time
- Added Visible Label Validation: New validation that checks whether elements requiring user input have a visible label
- Stability improvement

## [1.28.0] - 2025-06-25
- Stability improvement

## [1.27.0] - 2025-06-15
- Stability improvement
- Upgraded the integrated WDA (WebDriverAgent) to the latest version for improved compatibility and ongoing enhancements

## [1.26.4] - 2025-05-14
- Added support for filtering issues by the Overlapping Controls type
- Stability improvement

## [1.26.3] - 2025-04-29
- Stability improvement

## [1.26.2] - 2025-03-25
- Improved stability of WebView content validations

## [1.26.1] - 2025-03-10
- Stability improvement

## [1.26.0] - 2025-02-04
- Added support if the Target Application is not specified in the UITest target
- Stability improvement

## [1.25.0] - 2025-01-27
- Added AA Validation support for Tappable area
- Added Export CSV report
- Stability improvement

## [1.24.0] - 2024-11-19
- Added Invalid Range Values validation
- Stability improvement

## [1.23.2] - 2024-11-01
- Stability improvement

## [1.23.1] - 2024-10-17
- Updated open source software license information
- Stability improvement

## [1.23.0] - 2024-10-02
- Introduced save report strategy feature
- Stability improvement and bug fix

## [1.22.1] - 2024-09-04
- Improved Tappable Area validation for inline links cases
- Stability improvement and bug fix

## [1.22.0] - 2024-08-22
- Introduced EarlGrey 2.0 support for continuous mode
- Changes Tappable Area validation severity type from “Best Practice“ to “Serious”
- Stability improvement and bug fix

## [1.21.0] - 2024-08-07
- Added no issues report as a part of public API
- Fixed Accessible Name Starts with Label
- Fixed hiding HTML header tags
- Fixed HTML report logo for iframes

## [1.20.0] - 2024-07-30
- Added Label In Name validation
- Added Accessible Name Starts With Label validation
- Added Conflicting Type In Label validation

## [1.19.2] - 2024-07-05
- Stability improvement and bug fix

## [1.19.1] - 2024-06-06
- Stability improvement and bug fix

## [1.19.0] - 2024-04-30
- Added export of a list of all scanned elements that do not have accessibility issues
- Stability improvement and bug fix

## [1.18.3] - 2024-04-01
- Improved the color contrast validation logic

## [1.18.1] - 2024-03-27
- Improved the new HTML representation
- Improved the special characters validation
- Stability improvement and bug fix

## [1.18.0] - 2024-03-14
- Added improved HTML reports

## [1.17.0] - 2024-03-06
- Added new validations: Dynamic Fonts and Text Clipped
- Improved Alternative Text validation logic
- Stability improvement and bug fix

## [1.16.0] - 2024-02-29
- Stability improvement and bug fix

## [1.15.0] - 2024-01-15
- Introduced the deduplication feature for the continuous mode

## [1.14.0] - 2023-12-27
- Added uploading report feature to Evinced Platform

## [1.13.0] - 2023-12-18
- Stability improvement and bug fix

## [1.12.0] - 2023-10-27
- Excluded keyboard for accessibility validations
- Added export of meaningful accessibility labels

## [1.11.2] - 2023-09-20
- Added a new validation (instruction in name)
- Fixed isAccessibilityElement = false not being recognized
- Stability improvement

## [1.11.1] - 2023-05-30
- Fixed meaningful accessible names and meaningful alternative text logic

## [1.11.0] - 2023-05-25
- Added validation criteria to JSON and HTML output reports

## [1.10.0] - 2023-05-16
- Improving color contrast algorithms using OCR technology

## [1.9.0] - 2023-05-05
- Add new alternative text validation support
- Fixed iPadOS support issues
- Fixed filter issues;
- Stability improvement and bug fix

## [1.8.0] - 2022-12-27
- Options to make report name as a function name
- The reportStored() method returns a list of reports
- Stability improvement and bug fix

## [1.7.0] - 2022-09-23
- Ability to save screenshot into file
- New functionality added for ability to trace from where report()/analyze() was called
- stopAnalyze() now creates report of display in continuous mode
- Stability improvement and bug fix

## [1.6.0] - 2022-08-23
- Change log file is added
- Color Contrast rule configuration is introduced in rule-config
- Additional options to customize SDK behavior is introduced
- Stability improvement and bug fix

## [1.5.0] - 2022-07-23
- Customize report name

## [1.4.0] - 2022-07-12
- New Relic analytics, create a new dashboard for mobile SDKs in New Relic admin panel with data visualization
- Adding RuleConfig options to manage the ability to disable/enable a11y rules and their customization as well
- API change: move screenshotOptions to InitOptions

## [1.3.1] - 2022-06-28
- Stability improvement and bug fix

## [1.3.0] - 2022-05-09
- Continuous Mode is introduced
- Issue filtering with recursion
- Added Severities and issue types enums
- Drop Objective C support
- Few fixes

## [1.1.4] - 2022-02-08
- Stability improvement and bug fix

## [1.1.3] - 2021-12-16
- Stability improvement and bug fix

## [1.1.2] - 2021-11-23
- Stability improvement and bug fix

## [1.1.1] - 2021-10-28
- Stability improvement and bug fix

## [1.0.0] - 2021-09-12
- XCUI SDK for automated accessibility testing has been released
