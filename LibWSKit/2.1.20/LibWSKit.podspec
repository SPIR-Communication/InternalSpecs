Pod::Spec.new do |s|
  s.name         =  'LibWSKit'
  s.version      =  '2.1.20'
  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       =  { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.source       =  { :git => "http://bitbucket.spir.fr/scm/pods/lib-wskit.git", :tag => s.version.to_s }

  s.summary      =  'LibWSKit is an Objective-C framework for iOS that aims to make interacting with RESTful or SOAP web services '
  s.description  =  'SPIR Communication internal library for provide tools and classes to make interacting with RESTful or SOAP web services simple, fast and fun.'

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.frameworks = 'Foundation'

  s.source_files = "Classes/**/*.{m,h,c}"
  s.public_header_files = 'Classes/*.h',
                          'Classes/Utils/*.h'

  s.dependency 'GRMustache', '~>4.0'
  s.dependency 'LibSpirCore', '~> 1.4.0'

  #s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"','CLANG_ENABLE_OBJC_ARC' => 'YES'}


end
