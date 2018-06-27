Pod::Spec.new do |s|

 s.name         = "WViewKit"
  s.version      = "1.0.0"
  s.summary      = "便捷开发UIKit"
  s.homepage     = "https://github.com/frankKiwi/WViewBlock"
  s.license      = "MIT"
  s.author             = { "fanrenFRank" => "1778907544@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/frankKiwi/WViewBlock.git", :tag => "1.0.0" }
  
  #s.source_files = 'WViewKit/*.{h,m}'
  s.source_files = '**/*.{h,m}'

  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true
#   s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
end
