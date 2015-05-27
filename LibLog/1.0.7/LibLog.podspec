#
# Be sure to run `pod lib lint LibLog.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "LibLog"
  s.version          = "1.0.7"
  s.summary          = "Bibliothèque de traçage de logs."
  s.description      = <<-DESC
                       LibLog permet de aux développeur de diffuser des messages de log sur plusieurs supports de façon transparent
                       DESC
  s.homepage         = "http://www.spir.fr/"
  s.license          = { :type => 'Proprietary', :file => 'LICENSE' }
  s.author           = { "climbatize" => "pierre-michel.villa@ant-robot.com" }
  s.source           = { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-log", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/*'
  
  s.resource_bundles = {
    'LibLog' => ['Pod/Assets/*.png']
  }

  #s.default_subspec = 'Core'

  s.subspec "Core" do |core|
    core.source_files = "Pod/Classes/Core/*"
    core.dependency 'LibSpirCore'
    core.dependency 'LibTraceParse'
  end

  s.subspec "WSLogSpir" do |wslogspir|
    wslogspir.source_files = "Pod/Classes/WSLogSpir/*"
    wslogspir.dependency 'LibLog/Core'
    wslogspir.dependency 'LibWSKit'
  end

  s.subspec "File" do |file|
    file.source_files = "Pod/Classes/File/*"
    file.dependency 'LibLog/Core'
  end

end
