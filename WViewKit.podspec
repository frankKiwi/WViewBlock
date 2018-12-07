Pod::Spec.new do |s|

 s.name         = "WViewKit"
  s.version      = "1.0.4"
  s.summary      = "便捷开发UIKit"
  s.homepage     = "https://github.com/frankKiwi/WViewBlock"
  s.license      = "MIT"
  s.author             = { "fanrenFRank" => "1778907544@qq.com" }
  s.platform     = :ios, "8.0"
  

  s.requires_arc = true

  s.source       = { :git => "https://github.com/frankKiwi/WViewBlock.git", :tag => "#{s.version}" }

  s.source_files = '**/*.{h,m}'

  s.frameworks = "UIKit", "Foundation"
end
