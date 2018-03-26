Pod::Spec.new do |s|
  s.name             = "SDToastToolDemo"
  s.version          = "1.0.0"
  s.summary          = "闪店弹窗demo"
  s.homepage         = "git@gitlab.com:pangxiang1992/SDToastToolDemo.git"
  s.license          = 'Code is MIT, then custom font licenses.'
  s.author           = { "Vito" => "vitopangxiang@gmail.com" }
  s.source           = { :git => "git@gitlab.com:pangxiang1992/SDToastToolDemo.git", :tag => s.version }
  s.social_media_url = ''

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources = 'Pod/Assets/*'

  s.frameworks = 'UIKit', 'CoreText'
  s.module_name = 'Artsy_UIFonts'
end