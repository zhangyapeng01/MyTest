#
#  Be sure to run `pod spec lint MyTest.podspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "MyTest"
  s.version      = "0.0.1"
  s.summary      = "MyTest"

  s.homepage     = "https://github.com/zhangyapeng01/MyTest.git"

  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "zhangyapeng" => "1365160860@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/zhangyapeng01/MyTest.git", :tag => "#{s.version}" }

  s.source_files  = "MyTest/**/*.{h,m}"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"



  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
