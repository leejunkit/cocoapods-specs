Pod::Spec.new do |s|
  s.name         =  'RestKit'
  s.version      =  '0.9.4-dev-burpple'
  s.summary      =  'RestKit is a framework for consuming and modeling RESTful web resources on iOS and OS X.'
  s.homepage     =  'http://www.restkit.org'
  s.author       =  { 'Blake Watters' => 'blakewatters@gmail.com' }
  s.source       =  { :git => 'https://github.com/leejunkit/RestKit.git', :tag => '0.9.4-dev-burpple' }
  s.license      =  'Apache License, Version 2.0'

  s.source_files =  'Code/RestKit.h'
  s.frameworks = ['CFNetwork', 'CoreData', 'Security', 'MobileCoreServices', 'SystemConfiguration', 'QuartzCore']
  
  s.dependency 'cocoa-oauth'
  s.dependency 'FileMD5Hash'
  s.dependency 'JSONKit'
  s.dependency 'SOCKit', '1.0'
  s.dependency 'LibComponentLogging-Core'
  s.dependency 'LibComponentLogging-NSLog'
  s.dependency 'LibComponentLogging-pods'
  s.dependency 'XMLReader'
  s.dependency 'yajl'

  s.header_mappings_dir = 'Code'

  s.subspec 'CoreData' do |ss|
    ss.source_files = 'Code/CoreData/**/*.{h,m}'
    ss.frameworks = 'CoreData'
    ss.header_dir = '../RKCoreData' # to prevent header collision with Apple's CoreData
  end

  s.subspec 'Network' do |ss|
    ss.source_files = 'Code/Network/**/*.{h,m}'
  end

  s.subspec 'ObjectMapping' do |ss|
    ss.source_files = 'Code/ObjectMapping/**/*.{h,m}'
    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
    ss.libraries = 'xml2'
  end

  s.subspec 'Support' do |ss|
    ss.source_files = 'Code/Support/**/*.{h,m}'
  end

  s.subspec 'UI' do |ss|
    ss.source_files = 'Code/UI/**/*.{h,m}'
  end

  s.subspec 'iso8601parser' do |ss|
    ss.source_files = 'Vendor/iso8601parser/**/*.{h,m}'
    ss.header_dir = 'Vendor/iso8601parser'
  end
end