Pod::Spec.new do |s|

  s.name         =  'LibCexCore'
  s.version      =  '1.2.0'

  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       = { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-cex-core", :tag => s.version.to_s }

  s.summary      =  'Managed the access to the CEX backend .'
  s.description  =  'SPIR Communication internal library for provide access on fully fonctionality Customer, Contact and Appoitment for vendor portfolio'

  s.platform     = :ios, '6.0'
  s.prefix_header_file = 'Classes/CexCoreLib-Prefix.pch'

  s.source_files = "Classes/**/*.{m,h,c}"
  s.resources = 'Assets/**/*.*', 'Assets/Digipush/**/*.*'
  s.requires_arc = false

  s.frameworks = 'Foundation', 'CoreData', 'CoreLocation', 'UIKit', 'MessageUI', 'MapKit'

  s.dependency 'GRMustache',       '~>4.0.0'
  s.dependency 'XMLReader',        '~>0.0.2'
  s.dependency 'CorePlot',         '~>1.3.0'
  s.dependency 'EHAlertView',      '~>0.0.1'
  s.dependency 'MBProgressHUD',    '~>0.7.1'
  s.dependency 'LibCartegie',      '~>1.5.9'    # pour la CEX il faut imperativement garder 1.5.x qui ne dépend pos de la libAuthent
  s.dependency 'ASIHTTPRequest',   '~>1.8.1'
  s.dependency 'LibTraceParse',    '~>1.3.2'

end
