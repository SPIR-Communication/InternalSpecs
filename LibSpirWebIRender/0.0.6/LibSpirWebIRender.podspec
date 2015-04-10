Pod::Spec.new do |s|
  s.name         =  'LibSpirWebIRender'
  s.version      =  '0.0.6'
  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       = { "Loïc Lefort" => "llefort@spir.fr" }
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-webi-render", :tag => s.version.to_s }

  s.summary      =  'Handle interactions with a WebI server'
  s.description  =  'SPIR Communication internal library to handle parameterization and downloading of rendered PDF documents from a WebI server'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = "Classes/**/*.{m,h,c}"
  s.public_header_files = 'Classes/*.h'

  s.frameworks = 'Foundation'

  s.dependency 'LibSpirCore', '~> 1.3.5'
end
