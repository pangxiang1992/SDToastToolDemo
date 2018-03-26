Pod::Spec.new do |s|
  s.name             = "SDToastToolDemo"
  s.version          = "1.0.0"
  s.summary          = "闪店弹窗demo"
  s.homepage         = "https://github.com/pangxiang1992/SDToastToolDemo.git"
  s.license          = 'Code is MIT, then custom font licenses.'
  s.author           = { "pangxiang1992" => "pangxiangios@163.com" }
  s.source           = { :git => "https://github.com/pangxiang1992/SDToastToolDemo.git", :tag => "1.0.0" }
  s.social_media_url = ''

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'SDToastToolDemo/SDToastTool/*.swift'
  
  s.frameworks = 'UIKit'
end