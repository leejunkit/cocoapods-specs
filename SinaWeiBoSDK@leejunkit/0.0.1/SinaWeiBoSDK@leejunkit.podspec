Pod::Spec.new do |s|
  s.name     = 'SinaWeiBoSDK@leejunkit'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'SDK for publishing to Weibo.'
  s.homepage = 'http://open.weibo.com'
  s.author   = 'Sina Weibo'
  s.source   = { :git => 'git@github.com:leejunkit/SinaWeiboSDK.git' }
  s.platform = :ios
  s.source_files = 'SinaWeiBoSDK/*.{h,m}', 'SinaWeiBoSDK/SinaWeiBoSDK/*.{h,m}'

  s.subspec 'GTMBase64' do |ss|
  	ss.source_files = 'SinaWeiBoSDK/SinaWeiBoSDK/CTMBase64/**/*.{h,m}'
  end

  s.subspec 'SBJSON' do |ss|
  	ss.source_files = 'SinaWeiBoSDK/SinaWeiBoSDK/SBJSON/**/*.{h,m}'
  end

  s.subspec 'SFHFKeychainUtils' do |ss|
  	ss.source_files = 'SinaWeiBoSDK/SinaWeiBoSDK/SFHFKeychainUtils/**/*.{h,m}'
  end
end