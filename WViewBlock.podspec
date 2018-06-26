
Pod::Spec.new do |s|

 

  s.name         = "WViewBlock"
  s.version      = "0.0.1"
  s.summary      = "便捷开发UIKit"
  s.homepage     = "https://github.com/frankKiwi/WViewBlock"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }



  s.author             = { "fanrenFRank" => "1778907544@qq.com" }


  s.platform     = :ios
  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/frankKiwi/WViewBlock.git", :tag => "#{s.version}" }
  s.source_files = 'WViewBlock/WViewBlock.framework/Headers/*.{h}'
  s.vendored_frameworks = 'WViewBlock/WViewBlock.framework'
  s.public_header_files = 'WViewBlock/WViewBlock.framework/Headers/WViewBlock.h'
  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }


end