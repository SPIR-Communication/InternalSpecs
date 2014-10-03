Pod::Spec.new do |s|
  s.name         =  'GData-XMLSupport'
  s.version      =  '1.12.0'
  s.license      =  { :type => 'Apache', :file => 'COPYING.txt' }
  s.homepage     =  'https://code.google.com/p/gdata-objectivec-client/'
  s.author       =  'Google'
  s.source       =  { :http => "https://gdata-objectivec-client.googlecode.com/files/gdata-objectivec-client-1.12.0.zip" }

  s.summary      =  'Google Data APIs Objective-C Client Library (XML support only)'
  s.description  =  'The Google Data APIs Objective-C Client Library provides an iPhone static library, a Mac OS X framework, and source code that make it easy to access data through Google Data APIs. This cocoapod exports only the XML parsing class.'

  s.platform     = :ios, '7.0'
  s.frameworks   = 'Foundation'
  s.libraries    = 'xml2'
  s.requires_arc = false

  s.source_files = 'Source/XMLSupport/*.{m,h}'
  s.public_header_files = 'Source/XMLSupport/GDataXMLNode.h' 
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }
end
