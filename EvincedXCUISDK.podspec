#
# Be sure to run `pod lib lint EvincedXCUISDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EvincedXCUISDK'
  s.version          = '1.0.0'
  s.summary          = 'Evinced SDK for checking accessibility in iOS UI tests.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Evinced SDK for checking accessibility in iOS UI tests.
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://www.evinced.com/'
  s.license          = { :type => 'CUSTOM', :file => 'EvincedXCUISDK/LICENSE' }
  s.author           = { 'Evinced, Inc.' => 'alambov@evinced.com' }
  s.source           = { :http => 'https://storage.googleapis.com/evinced-xcui-sdk/EvincedXCUISDK-1.0.0.zip' }

  s.ios.deployment_target = '12.0'

  s.vendored_frameworks = 'EvincedXCUISDK/EvincedXCUISDK.xcframework'
end
