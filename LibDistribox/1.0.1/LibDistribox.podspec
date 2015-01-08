Pod::Spec.new do |s|
  s.name         =  'LibDistribox'
  s.version      =  '1.0.1'
  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       = { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-distribox", :tag => s.version.to_s }

  s.summary      =  'Managed a distributing zone.'
  s.description  =  'SPIR Communication internal library for provide access on fully fonctionality distributing zone'

  s.platform     = :ios, '6.0'
  s.source_files = "Classes/**/*.{m,h,c}"
  s.prefix_header_file = 'Classes/DistriBox/DistriBoxLib-Prefix.pch'
  s.public_header_files = 'Classes/DistriBox/DistriBoxViewController.h', 
                          'Classes/DistriBox/BeanZone.h',
                          'Classes/DistriBox/BeanZoneElement.h'

  s.resources = 'Assets/**/*.*' 
  s.requires_arc = true

  s.frameworks = 'Foundation', 'CoreLocation', 'MapKit'

end
