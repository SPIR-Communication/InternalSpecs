Pod::Spec.new do |s|
  s.name         =  'LibCartegie'
  s.version      =  '1.6.0'
  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       = { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-cartegie", :tag => s.version.to_s }

  s.summary      =  'Access to cartegie customer functional research.'
  s.description  =  'SPIR Communication internal library for provide access on fully fonctionality cargtegie customer research.'

  s.platform     = :ios, '7.0'
  s.source_files = "Classes/**/*.{m,h}"
  s.resource  = ['Classes/Private/Assets/*.xml', 'Assets/**/*.*']
  s.public_header_files = 'Classes/SPIRLibCartegie.h' , 'Classes/Models/SPIREtablissementCartegie.h' , 'Classes/Models/SPIRTErreur.h' , 'Classes/SPIRLibCartegieProtocol.h', 'Classes/SPIRLibCartegieSearchViewController.h'
  s.requires_arc = true
  s.xcconfig     = { 'CLANG_ENABLE_OBJC_ARC' => 'YES'}

  s.dependency 'GRMustache',       '4.0.0'
  s.dependency 'Reachability',     '3.1.1'
  s.dependency 'NSData+Base64',    '1.0.0'
  s.dependency 'XMLReader',        '0.0.2'
  s.dependency 'MBProgressHUD',    '0.7.1'
  s.dependency 'LibSpirCore',      '~> 1.1.3'
  s.dependency 'LibSpirAuthentication/SPIRUser',   '~> 1.1.0'
  
end
