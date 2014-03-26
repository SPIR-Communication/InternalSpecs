Pod::Spec.new do |s|
  s.name         = 'EHAlertView'
  s.version      = '0.0.1'
  s.license      = { :type => 'Unknown', :file => 'LICENCE' }
  s.homepage     = 'https://github.com/SPIR-Communication/EHAlertView'
  s.author       = { "Antoine Marcadet" => "amarcadet" }
  s.source       = { :git => "https://github.com/SPIR-Communication/EHAlertView.git", :commit => '3769b93acc147cabc0d710b5cfc84d85cfd6425e' }

  s.summary      = 'Block based UIAlertView subclass.'
  s.description  = 'EHAlertView is a subclass of UIAlertView that allows you to use blocks instead of delegate pattern while dealing with alert view action.'

  s.platform     = :ios, '5.0'
  s.source_files = "EHAlertView.{m,h}"
  s.public_header_files = 'EHAlertView.h'
  s.requires_arc = false
  
  s.frameworks = 'UIKit'
end
