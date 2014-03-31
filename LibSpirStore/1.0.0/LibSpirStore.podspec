Pod::Spec.new do |s|


  s.name         = "LibSpirStore"
  s.author       = {"Delepine Thibaut" => "tdelepine@gmail.com" }
  s.version      = "1.0.0"
  s.homepage     =  'http://www.spir.fr'
  s.source       = { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-store", :tag => s.version.to_s }
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  
  s.summary      =  'Managed the connection authorizations to the SPIR information system.'
  s.description  =  'SPIR Communication internal library for fully provide the access connection authorization.'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'

  s.requires_arc = true


  s.source_files = 'Classes/**/*.{m,h,c}'
  
  
  s.dependency 'LibSpirCore',      					'~> 1.1.0'
  s.dependency 'LibSpirAuthentication/Base',  	'~> 2.0.1'


end
