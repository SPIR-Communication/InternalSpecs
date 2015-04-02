Pod::Spec.new do |s|

  s.name         = "LibSpirAuthentication"
  s.author       = { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.version      = "2.3.10"
  s.homepage     =  'http://www.spir.fr'
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-authentication", :tag => s.version.to_s }

  s.license      = { :type => 'Proprietary', :file => 'LICENSE' }

  s.summary      = 'Manage the connection authorizations to the SPIR information system.'
  s.description  = 'SPIR Communication internal library to fully provide the access connection authorization.'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'

  s.requires_arc = true

  s.resources = 'Assets/SPIRAuthenticationRequest.xml',
                'Assets/SPIRAuthenticationRequest.json',
                'Assets/SPIRAuthentication.storyboard',
                 'Assets/SPIRAuthenticationiPhone.storyboard',
                'Assets/SPIRAuthentication.xcassets'

  s.public_header_files = 'Classes/SPIRAuthenticationBase.h',
                          'Classes/SPIRAuthentication.h',
                          'Classes/ISPIRAuthentication.h',
                          'Classes/SPIRAuthenticationViewController.h',
                          'Classes/Models/Base/ApplicationBundleInfo.h',
                          'Classes/Models/Base/SPIRFunction.h',
                          'Classes/Models/Base/SPIRFunctions.h',
                          'Classes/Models/Base/SPIRAppVersions.h',
                          'Classes/Models/Common/*.h'

  s.source_files = 'Classes/**/*.{m,h,c}'
  s.exclude_files = 'Classes/Models/Base/*.{m,h}'

  s.subspec 'Base' do |sp|
    sp.source_files = 'Classes/Models/Base/**/*.{m,h,c}'
  end

  s.dependency 'LibSpirCore', '~> 1.4.0'
  s.dependency 'LibWSKit', '~>2.1.0'



end
