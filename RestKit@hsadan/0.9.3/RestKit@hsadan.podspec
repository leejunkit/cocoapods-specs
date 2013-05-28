Pod::Spec.new do |s|
  s.name         =  'RestKit@hsadan'
  s.version      =  '0.9.3'
  s.summary      =  'RestKit is a framework for consuming and modeling RESTful web resources on iOS and OS X.'
  s.homepage     =  'http://www.restkit.org'
  s.author       =  { 'Blake Watters' => 'blakewatters@gmail.com' }
  s.source       =  { :git => 'https://github.com/hsadan/RestKit.git' }
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
  s.dependency 'RestKit@hsadan/iso8601parser'

  s.subspec 'iso8601parser' do |ss|
    ss.source_files = 'Vendor/iso8601parser/*.{h,m}'
  end

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

  s.subspec 'UI' do |ss|
    ss.source_files = 'Code/UI/**/*.{h,m}'
  end
end