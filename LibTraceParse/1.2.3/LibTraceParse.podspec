Pod::Spec.new do |s|
  s.name         =  'LibTraceParse'
  s.version      =  '1.2.3'
  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       = { "Barthelemy David" => "dbarthelemy@imakeit4u.com" }
  s.source       = { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-traceparse", :tag => s.version.to_s }

  s.summary      =  'Structured logging system.'
  s.description  =  'SPIR Communication internal library builds on top of Parse service to provide a structured data logging system.'

  s.platform     = :ios, '5.0'
  s.source_files = "Classes/**/*.{m,h}"
  s.public_header_files = 'Classes/LibTraceParse.h'
  s.requires_arc = false
  
  s.frameworks = 'Foundation', 'CFNetwork', 'CoreTelephony'
  s.dependency 'Facebook-iOS-SDK', '3.13.1' # not needed but is a dependency of Parse, use fixed version to avoid unexpected upgrades...
  s.dependency 'Parse', '1.2.11'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/Parse/Parse.framework/Headers"' }
end
