#
# Be sure to run `pod lib lint MGTemplate.podspec` to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MGTemplateKit"
  s.version          = "0.1.0"
  s.summary          = "When you sit down to work, external critics aren’t"
  s.description      = "When you sit down to work, external critics aren’t the enemy. It’s you who you must to fight against to do great fucking work. You must overcome yourself. Saul Bass on failure: Failure is built into creativity… the creative act involves this element of ‘newness’ and ‘experimentalism,’ then one must expect and accept the fucking possibility of failure. The details are not the details. They make the fucking design. To go partway is easy, but mastering anything requires hard fucking work. Don’t worry about what other people fucking think. Never, never assume that what you have achieved is fucking good."
  s.homepage         = 'https://bitbucket.org/haraldbregu/mgtemplatekit/src'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Harald Bregu' => 'harald.bregu@gmail.com' }
  s.source           = { :git => 'https://haraldbregu@bitbucket.org/haraldbregu/mgtemplatekit.git', :tag => s.version.to_s }
  s.source_files = "MGTemplateKit/Classes/**/*"
  s.resource_bundles = { 'MGTemplate' => ['MGTemplateKit/Assets/*.ttf'] }
  s.swift_version = "4.2"
  s.ios.deployment_target = "11.0"
end
