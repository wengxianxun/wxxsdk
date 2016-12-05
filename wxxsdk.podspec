#
#  Be sure to run `pod spec lint wxxsdk.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
 


  s.name         = "wxxsdk"
  s.version      = "1.0.3"
  s.summary      = "翁贤训的第一个sdk."
 

  s.homepage     = "https://github.com/wengxianxun/wxxsdk"
     
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.platform    = :ios, "8.0"    #对应的ios平台

  s.author             = { "joying" => "wengxianxun@hotmail.com" }
   

s.source       = { :git => "https://github.com/wengxianxun/wxxsdk.git", :tag => "#{s.version}" }
 s.source_files  = 'Classes/**/*'

s.frameworks = 'UIKit'
end
