Pod::Spec.new do |s|

  s.name         = "LibSpirSyndication"
  s.author       = { "Loïc Lefort" => "llefort@spir.fr" }
  s.version      = "1.0.4"
  s.homepage     = 'http://www.spir.fr'
  s.source       = { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-syndication", :tag => s.version.to_s }
  s.license      = { :type => 'Proprietary', :file => 'LICENSE' }

  s.summary      = 'Handle the retrieval of SPIR RSS feeds'
  s.description  = 'SPIR Communication internal library to handle download and parsing of SPIR proprietary RSS feeds'

  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'

  s.requires_arc = true

  s.public_header_files =  'Classes/SPIRSyndication.h',
                           'Classes/SPIRSyndicationDelegate.h',
                           'Classes/SPIRFeedEntries.h',
                           'Classes/SPIRFeedEntry.h',
                           'Classes/SPIRFeedEntryDetail.h'

  s.source_files = 'Classes/**/*.{m,h,c}'
  
  s.dependency 'LibSpirAuthentication/Base', '~> 2.0.0'
  s.dependency 'LibSpirCore', '~> 1.2.0'
  s.dependency 'XMLReader', '~> 0.0.2'
end
