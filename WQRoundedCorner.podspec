
Pod::Spec.new do |s|

s.name         = "WQRoundedCorner"
s.version      = "0.0.1"
s.summary      = "设置UIView、UIImageView、UIButton等视图的圆角和阴影"
s.homepage     = "https://github.com/WQiOS/WQRoundedCorner"
s.license      = "MIT"
s.author       = { "王强" => "1570375769@qq.com" }
s.platform     = :ios, "8.0" #平台及支持的最低版本
s.requires_arc = true # 是否启用ARC
s.source       = { :git => "https://github.com/WQiOS/WQRoundedCorner.git", :tag => "#{s.version}" }
s.source_files = "WQRoundedCorner/*.{h,m}"
s.ios.framework  = 'UIKit'
s.dependency 'SDWebImage'

end
