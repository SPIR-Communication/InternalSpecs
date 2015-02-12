Pod::Spec.new do |s|
  s.name         =  'LibTraceParse'
  s.version      =  '1.3.2'
  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       = { "Barthelemy David" => "INFORMATIQUE_PROJETS_MOBILITE@spir.fr" }
  s.source       = { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-traceparse", :tag => s.version.to_s }

  s.summary      =  'Structured logging system.'
  s.description  =  'SPIR Communication internal library builds on top of Parse service to provide a structured data logging system.'

  s.platform     = :ios, '6.0'
  s.source_files = "Classes/**/*.{m,h}"
  s.public_header_files = 'Classes/LibTraceParse.h'
  s.requires_arc = false

  s.frameworks = 'Foundation', 'CFNetwork', 'CoreTelephony'

  s.dependency 'Parse'
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/Parse/Parse.framework/Headers"' }
end
