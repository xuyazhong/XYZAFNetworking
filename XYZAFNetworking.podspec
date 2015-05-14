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
  s.public_header_files = 'AFNetworking/*.h'
  s.source_files = 'AFNetworking/AFNetworking.h'

  s.subspec 'Serialization' do |ss|
  ss.source_files = 'AFNetworking/AFURL{Request,Response}Serialization.{h,m}'
  ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
  ss.osx.frameworks = 'CoreServices'
  end

  s.subspec 'Security' do |ss|
  ss.source_files = 'AFNetworking/AFSecurityPolicy.{h,m}'
  ss.frameworks = 'Security'
  end

  s.subspec 'Reachability' do |ss|
  ss.source_files = 'AFNetworking/AFNetworkReachabilityManager.{h,m}'
  ss.frameworks = 'SystemConfiguration'
  end

  s.subspec 'NSURLConnection' do |ss|
  ss.dependency 'AFNetworking/Serialization'
  ss.dependency 'AFNetworking/Reachability'
  ss.dependency 'AFNetworking/Security'

  ss.source_files = 'AFNetworking/AFURLConnectionOperation.{h,m}', 'AFNetworking/AFHTTPRequestOperation.{h,m}', 'AFNetworking/AFHTTPRequestOperationManager.{h,m}'
  end

  s.subspec 'NSURLSession' do |ss|
  ss.dependency 'AFNetworking/Serialization'
  ss.dependency 'AFNetworking/Reachability'
  ss.dependency 'AFNetworking/Security'

  ss.source_files = 'AFNetworking/AFURLSessionManager.{h,m}', 'AFNetworking/AFHTTPSessionManager.{h,m}'
  end

  s.subspec 'UIKit' do |ss|
  ss.ios.deployment_target = '6.0'

  ss.dependency 'AFNetworking/NSURLConnection'
  ss.dependency 'AFNetworking/NSURLSession'

  ss.ios.public_header_files = 'UIKit+AFNetworking/*.h'
  ss.ios.source_files = 'UIKit+AFNetworking'
  ss.osx.source_files = ''
  end

end
