Pod::Spec.new do |s|
  s.name         =  'LibCexCore'
  s.version      =  '1.0.1.pre'
  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       = { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-cex-core", :tag => s.version.to_s }

  s.summary      =  'Managed the access to the CEX backend .'
  s.description  =  'SPIR Communication internal library for provide access on fully fonctionality Customer, Contact and Appoitment for vendor portfolio'

  s.platform     = :ios, '5.0'
  s.header_mappings_dir = 'Classes'
  s.prefix_header_file = 'Classes/CexCoreLib-Prefix.pch'

  s.source_files = "Classes/**/*.{m,h,c}"
  s.requires_arc = false

  s.frameworks = 'Foundation', 'CoreData', 'CoreLocation', 'UIKit', 'MessageUI'

  s.dependency 'GRMustache',       '4.0.0'
  s.dependency 'XMLReader',        '0.0.2'

end
