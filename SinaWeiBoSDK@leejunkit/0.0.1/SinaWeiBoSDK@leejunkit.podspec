Pod::Spec.new do |s|
  s.name     = 'SinaWeiBoSDK@leejunkit'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'SDK for publishing to Weibo.'
  s.homepage = 'http://open.weibo.com'
  s.author   = 'Sina Weibo'
  s.source   = { :git => 'git@github.com:leejunkit/SinaWeiboSDK.git' }
  s.platform = :ios
  s.source_files = 'SinaWeiBoSDK/SinaWeiBoSDK/**/*.{h,m}'
  s.header_mapping_dir = 'SinaWeiBoSDK/SinaWeiBoSDK'

end