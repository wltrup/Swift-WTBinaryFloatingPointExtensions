#
# Be sure to run `pod lib lint WTBinaryFloatingPointExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WTBinaryFloatingPointExtensions'
  s.version          = '1.0.0'
  s.summary          = 'WTBinaryFloatingPointExtensions adds a number of useful extensions to all floating types, such as conversions between degrees and radians and uniform random distributions.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    WTBinaryFloatingPointExtensions adds a number of useful extensions to all floating types,
    such as conversions between degrees and radians and uniform random distributions.
                       DESC

  s.homepage         = 'https://github.com/wltrup/WTBinaryFloatingPointExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Wagner Truppel' => 'trupwl@gmail.com' }
  s.source           = { :git => 'https://github.com/wltrup/WTBinaryFloatingPointExtensions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'WTBinaryFloatingPointExtensions/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WTBinaryFloatingPointExtensions' => ['WTBinaryFloatingPointExtensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
