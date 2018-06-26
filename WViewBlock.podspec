
Pod::Spec.new do |s|

 

  s.name         = "WViewBlock"
  s.version      = "0.0.1"
  s.summary      = "便捷开发UIKit"
  s.homepage     = "https://github.com/frankKiwi/WViewBlock"
  s.license      = "MIT"
  s.author             = { "fanrenFRank" => "1778907544@qq.com" }
  s.platform     = :ios, "8.0"


  s.source       = { :git => "https://github.com/frankKiwi/WViewBlock.git", :tag => "0.0.1" }
  s.source_files = 'WViewBlockKit/WViewBlock.framework/Headers/*.{h}'
  s.vendored_frameworks = 'WViewBlockKit/WViewBlock.framework'
  s.public_header_files = 'WViewBlockKit/WViewBlock.framework/Headers/WViewBlock.h'
  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

end
