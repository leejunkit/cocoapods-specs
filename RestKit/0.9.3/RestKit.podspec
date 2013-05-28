Pod::Spec.new do |s|
  s.name         =  'RestKit'
  s.version      =  '0.9.3'
  s.summary      =  'RestKit is a framework for consuming and modeling RESTful web resources on iOS and OS X.'
  s.homepage     =  'http://www.restkit.org'
  s.author       =  { 'Blake Watters' => 'blakewatters@gmail.com' }
  s.source       =  { :git => 'https://github.com/hsadan/RestKit.git', :tag => '0.9.3' }
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
    ss.header_dir = 'RKCoreData'
  end

  s.subspec 'Network' do |ss|
    ss.source_files = 'Code/Network/**/*.{h,m}'
    #ss.header_dir = 'Network'
  end

  s.subspec 'ObjectMapping' do |ss|
    ss.source_files = 'Code/ObjectMapping/**/*.{h,m}'
    #ss.header_dir = 'ObjectMapping'
    ss.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
    ss.libraries = 'xml2'
  end

  s.subspec 'Support' do |ss|
    ss.source_files = 'Code/Support/**/*.{h,m}'
    #ss.header_dir = 'Support'
  end

  s.subspec 'NSLogger' do |ss|
    ss.source_files = 'Vendor/NSLogger/**/*.{h,m}'
    #ss.header_dir = 'Vendor/NSLogger'
  end

  s.subspec 'NXJSON' do |ss|
    ss.source_files = 'Vendor/NXJSON/**/*.{h,m}'
    #ss.header_dir = 'Vendor/NXJSON'
  end

  s.subspec 'SBJSON' do |ss|
    ss.source_files = 'Vendor/SBJSON/**/*.{h,m}'
    #ss.header_dir = 'Vendor/SBJSON'
  end

  s.subspec 'YAJL' do |ss|
    ss.source_files = 'Vendor/YAJL/**/*.{h,m}'
    #ss.header_dir = 'Vendor/YAJL'
  end

end