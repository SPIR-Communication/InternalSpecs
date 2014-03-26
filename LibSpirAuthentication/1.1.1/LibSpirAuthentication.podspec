Pod::Spec.new do |s|

  s.name         = "LibSpirAuthentication"
  s.author       = { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.version      = "1.1.1"
  s.homepage     =  'http://www.spir.fr'
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-authentication", :tag => s.version.to_s }

  # s.license      = 'MIT (example)'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.summary      =  'Managed the connection authorizations to the SPIR information system.'
  s.description  =  'SPIR Communication internal library for fully provide the access connection authorization.'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'

  s.requires_arc = true


  s.resources = 'Assets/**/*.*' 

  s.public_header_files = 	'Classes/SPIRAuthenticationBase.h',
  							'Classes/SPIRAuthentication.h',
						  	'Classes/ISPIRAuthentication.h',
						  	'Classes/Models/SPIRUser/SPIRUser.h',
						  	'Classes/Models/Common/**/*.h'

  s.source_files = 'Classes/**/*.{m,h,c}'
  
  s.subspec 'SPIRUser' do |sp|
  	sp.source_files 		= 	'Classes/Models/SPIRUser/SPIRUser.{m,h}'
  end

  
  s.dependency 'NSData+Base64',    '1.0.0'
  s.dependency 'LibSpirCore',      '~> 1.1.0'


end
