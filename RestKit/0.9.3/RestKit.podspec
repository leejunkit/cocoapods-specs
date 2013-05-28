Pod::Spec.new do |s|
  s.name         =  'RestKit'
  s.version      =  '0.9.3'
  s.summary      =  'RestKit is a framework for consuming and modeling RESTful web resources on iOS and OS X.'
  s.homepage     =  'http://www.restkit.org'
  s.author       =  { 'Blake Watters' => 'blakewatters@gmail.com' }
  s.source       =  { :git => 'https://github.com/RestKit/RestKit.git', :tag => '0.9.3' }
  s.license      =  'Apache License, Version 2.0'

  s.source_files =  'Code/RestKit.h'
  s.frameworks = ['CFNetwork', 'CoreData', 'Security', 'MobileCoreServices', 'SystemConfiguration', 'QuartzCore']
  s.libraries = 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  
  s.dependency 'cocoa-oauth'
  s.dependency 'FileMD5Hash'
  s.dependency 'JSONKit'
  s.dependency 'SOCKit', '1.0'
  s.dependency 'LibComponentLogging-Core'
  s.dependency 'LibComponentLogging-NSLog'
  s.dependency 'LibComponentLogging-pods'
  s.dependency 'XMLReader'
  s.dependency 'yajl'

  s.subspec 'CoreData' do |ss|
    ss.source_files = 'Code/CoreData/**/*.{h,m}'
  end

  s.subspec 'Network' do |ss|
    ss.source_files = 'Code/Network/**/*.{h,m}'
  end

  s.subspec 'ObjectMapping' do |ss|
    ss.source_files = 'Code/ObjectMapping/**/*.{h,m}'
  end

  s.subspec 'Support' do |ss|
    ss.source_files = 'Code/Support/**/*.{h,m}'
  end

  s.subspec 'NSLogger' do |ss|
    ss.source_files = 'Vendor/NSLogger/**/*.{h,m}'
  end

  s.subspec 'NXJSON' do |ss|
    ss.source_files = 'Vendor/NXJSON/**/*.{h,m}'
  end

  s.subspec 'SBJSON' do |ss|
    ss.source_files = 'Vendor/SBJSON/**/*.{h,m}'
  end

  s.subspec 'YAJL' do |ss|
    ss.source_files = 'Vendor/YAJL/**/*.{h,m}'
  end

end