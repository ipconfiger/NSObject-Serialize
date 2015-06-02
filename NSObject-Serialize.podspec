#
# Be sure to run `pod lib lint NSObject-Serialize.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NSObject-Serialize"
  s.version          = "0.1.0"
  s.summary          = "Easy way from NSDictionary to NSObject or from NSObject to NSDictionary."
  s.homepage         = "https://github.com/ipconfiger/NSObject-Serialize"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "ipconfiger" => "superpowerlee@gmail.com" }
  s.source           = { :git => "https://github.com/ipconfiger/NSObject-Serialize.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Example/BLSerializor/**/*'
  s.resource_bundles = {
    'NSObject-Serialize' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
