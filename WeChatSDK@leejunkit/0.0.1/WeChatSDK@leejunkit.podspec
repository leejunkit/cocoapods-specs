Pod::Spec.new do |s|
  s.name         = "WeChatSDK@leejunkit"
  s.version      = "0.0.1"
  s.summary      = "The Official iOS SDK of WeChat from Tencent."
  s.homepage     = "http://dev.wechatapp.com/"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (c) 2012 Tencent. All rights reserved.
      LICENSE
  }
  s.author       = { "Tencent" => "developer@wechatapp.com" }
  s.source       = { :http => "http://dev.wechatapp.com/download/sdk/WeChat_SDK_iOS_en.zip" }
  s.platform     = :ios
  s.source_files = 'WeChat_SDK_iOSen/WXApiObject.h', 'WeChat_SDK_iOSen/WXApi.h'
  s.preserve_paths = 'WeChat_SDK_iOSen/libWeChatSDK_armv7_armv7s.a'
  s.library   = 'WeChatSDK_armv7_armv7s'
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/WeChatSDK@leejunkit/WeChat_SDK_iOSen"' }
end