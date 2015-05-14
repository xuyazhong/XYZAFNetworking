#
# Be sure to run `pod lib lint XYZAFNetworking.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XYZAFNetworking'
  s.version          = '1.0.0'
  s.summary          = 'XYZAFNetworking test.'
  s.description      = 'XYZAFNetworking is rename of AFNetworking.'
  s.homepage         = 'https://github.com/xuyazhong/XYZAFNetworking'
  s.license          = 'MIT'
  s.author           = {'xuyazhong' => 'xuyazhong@foxmail.com'}
  s.source           = {:git => 'https://github.com/xuyazhong/XYZAFNetworking.git', :tag => s.version}
  s.requires_arc 	 = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source_files = 'XYZAFNetworking/*'
end
