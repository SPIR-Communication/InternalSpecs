Pod::Spec.new do |s|
  s.name         =  'LibSpirCore'
  s.version      =  '1.4.14'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       = { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.source       =  { :git => "http://bitbucket.spir.fr/scm/pods/lib-core.git", :tag => s.version.to_s }

  s.summary      =  'Provide some utilities tools and additional functions in SPIR developpement context.'
  s.description  =  'SPIR Communication internal library for provide access utility tools and additional functions.'

  s.platform     = :ios, '7.0'
  s.source_files = "Classes/**/*.{m,h,c}"
  s.public_header_files = 'Classes/**/*.h'
  s.resources = 'Assets/**/*.*'
  s.exclude_files = 'Classes/SPIRUser+Private.{m,h}'
  s.requires_arc = true
  s.frameworks = 'Foundation','UIKit','SystemConfiguration'

  s.dependency 'XMLReader', '~>0.0.2'
  s.dependency 'NSData+Base64', '~>1.0.0'
  s.dependency 'Reachability'
  s.dependency 'SSKeychain'
end
