Pod::Spec.new do |s|
  s.name         = 'DigiPushLib'
  s.version      = '2.1.0'

  s.author       = { "Loic Lefort" => "llefort@spir.fr" }
  s.homepage     =  'http://www.spir.fr'
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-cex-map", :tag => s.version.to_s }

  s.license      = { :type => 'Proprietary', :file => 'LICENSE' }

  s.summary      = 'Adds new product type (Digipush SMS and Mail) to CEX product set. '
  s.description  = 'SPIR Communication internal library used in CEX application for Digipush SMS and Mail'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'

  s.requires_arc = false

  s.public_header_files = 'Classes/UI/Models/*.h'
  s.source_files = 'Classes/UI/**/*.{m,h,c}'
  s.resources = 'Assets/UI/**/*.*'

  s.subspec 'Core' do |sp|
    sp.public_header_files = 'Classes/Core/CEXDigipushServices.h', 'Classes/Core/Models/*.h'
    sp.source_files = 'Classes/Core/**/*.{m,h,c}'
  end

  s.frameworks = 'Foundation', 'CoreLocation', 'UIKit', 'MapKit'

  s.dependency 'LibCexCore', '~>1.2.0'
end
