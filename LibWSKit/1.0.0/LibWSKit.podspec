Pod::Spec.new do |s|
  s.name         =  'LibWSKit'
  s.version      =  '1.0.0'
  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       =  { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-wskit", :tag => s.version.to_s }

  s.summary      =  'LibWSKit is an Objective-C framework for iOS that aims to make interacting with RESTful or SOAP web services '
  s.description  =  'SPIR Communication internal library for provide tools and classes to make interacting with RESTful or SOAP web services simple, fast and fun.'

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.frameworks = 'Foundation'
  s.libraries    = 'xml2'


  s.source_files = "Classes/**/*.{m,h,c}"
  s.public_header_files = 'Classes/WSKITProxies/WSKITRequestManager.h',
                          'Classes/WSKITProxies/WSKITProgressionHandler.h',
                          'Classes/WSKITProxies/WSKITProxyBase/WSKITVerbOperation.h',
                          'Classes/WSKITProxies/WSKITProxyBase/WSKITProxyProtocolBase.h', 
                          'Classes/WSKITProxies/WSKITProxyBase/WSKITProxyBase.h',
                          'Classes/WSKITProxies/WSKITProxyBase/WSKITParseOperationBase.h',
                          'Classes/WSKITProxies/WSKITProxyJSON/WSKITProxyBaseJSON.h',
                          'Classes/WSKITProxies/WSKITProxyJSON/WSKITParseOperationBaseJSON.h', 
                          'Classes/WSKITProxies/WSKITProxySOAP/WSKITProxyBaseSOAP.h', 
                          'Classes/WSKITProxies/WSKITProxySOAP/WSKITParseOperationBaseSOAP.h' 
                          'Classes/WSKITProxies/WSKITProxySELLIGENT/WSKITProxyBaseSELLIGENT.h'
                          'Classes/WSKITProxies/WSKITProxySELLIGENT/WSKITParseOperationBaseSELLIGENT.h'

  s.dependency 'NSData+Base64', '1.0.0'
  s.dependency 'Reachability', '3.1.1'
  s.dependency 'GRMustache', '4.0.0'
  s.dependency 'LibSpirCore', '~> 1.3.0'
  s.dependency 'LibSpirAuthentication/Base', '~> 2.1.0'

  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"','CLANG_ENABLE_OBJC_ARC' => 'YES'}

end


