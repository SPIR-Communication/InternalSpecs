Pod::Spec.new do |s|
  s.name         =  'LibSpirCore'
  s.version      =  '1.1.1'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       = { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-core", :tag => s.version.to_s }

  s.summary      =  'Provide some utility tools and additional functions in SPIR developpement context.'
  s.description  =  'SPIR Communication internal library for provide access utility tools and additional functions.'

  s.platform     = :ios, '7.0'
  s.source_files = "Classes/**/*.{m,h,c}"
  s.public_header_files = 'Classes/SampleLib.h', 'Classes/SampleLibC.h'
  s.requires_arc = true
  s.frameworks = 'Foundation'
  
  s.dependency 'XMLReader',        '0.0.2'

end
