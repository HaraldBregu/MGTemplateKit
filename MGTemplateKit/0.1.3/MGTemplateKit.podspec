#
# Be sure to run `pod lib lint MGTemplate.podspec` to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MGTemplateKit"
  s.version          = "0.1.3"
  s.summary          = "When you sit down to work, external critics aren’t"
  s.description      = "When you sit down to work, external critics aren’t the enemy. It’s you who you must to fight against to do great fucking work. You must overcome yourself. Saul Bass on failure: Failure is built into creativity… the creative act involves this element of ‘newness’ and ‘experimentalism,’ then one must expect and accept the fucking possibility of failure."
  s.homepage         = 'https://bitbucket.org/haraldbregu/mgtemplatekit/src'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Harald Bregu' => 'harald.bregu@gmail.com' }
  s.source           = { :git => 'https://haraldbregu@bitbucket.org/haraldbregu/mgtemplatekit.git', :tag => s.version.to_s }
  s.source_files = "MGTemplateKit/Classes/**/*"
  s.resource_bundles = { 'MGTemplateKit' => ['MGTemplateKit/Assets/*.ttf'] }
  s.dependency 'UIColor_Hex_Swift', '~> 4.2.0'
  s.swift_version = "4.2"
  s.ios.deployment_target = "11.0"
end
