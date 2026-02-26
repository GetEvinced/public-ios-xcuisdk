#
# Be sure to run `pod lib lint EvincedXCUISDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EvincedXCUISDK'
  s.version          = '1.32.0'
  s.summary          = 'Evinced SDK for checking accessibility in iOS UI tests.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The Evinced XCUI SDK integrates with new or existing UI tests to automatically detect accessibility issues. With the addition of a few lines of code, you can analyze your entire application to understand how it can become more accessible. At the conclusion of the tests, actionable HTML and JSON reports are generated to track issues in any reporting tool.
DESC

  s.homepage         = 'https://github.com/GetEvinced/public-ios-xcuisdk/'
  s.license          = { :type => 'CUSTOM', :file => 'LICENSE' }
  s.author           = { 'Evinced, Inc.' => 'alambov@evinced.com' }
  s.source           = { :http => 'https://storage.googleapis.com/evinced-xcui-sdk/EvincedXCUISDK-1.32.0.zip' }
  s.changelog        = 'https://raw.githubusercontent.com/GetEvinced/public-ios-xcuisdk/master/CHANGELOG.md'
  s.resource         = 'CHANGELOG.md'

  s.ios.deployment_target = '15.0'

  s.vendored_frameworks = '**/EvincedXCUISDK.xcframework'
end
