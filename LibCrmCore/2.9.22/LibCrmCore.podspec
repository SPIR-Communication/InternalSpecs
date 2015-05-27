Pod::Spec.new do |s|
  s.name         =  'LibCrmCore'
  s.version      =  '2.9.22'
  s.license      =  { :type => 'Proprietary', :file => 'LICENSE' }
  s.homepage     =  'http://www.spir.fr'
  s.author       =  { "Delepine Thibaut" => "tdelepine@gmail.com" }
  s.source       =  { :svn => "http://pwappsvn-1.external.spir.fr/pub/spir-lib-crm-core", :tag => s.version.to_s }

  s.summary      =  'Managed the access to the CRM backend .'
  s.description  =  'SPIR Communication internal library for provide access on fully fonctionality Customer, Contact and Appointment for vendor portfolio'

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.frameworks   = 'Foundation', 'CoreData', 'CoreLocation', 'UIKit'
  s.libraries    = 'xml2'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |cs|
    cs.source_files = "Classes/**/*.{m,h,c}"
    cs.public_header_files = 'Classes/CRMCoreDataAccess.h',
                             'Classes/CRMCoreDataAccessBlockDefinition.h',
                             'Classes/CRMCoreDataAccess-Error.h',
                             'Classes/CRMCoreDataAccess-Subsidiary.h',
                             'Classes/ICRMCoreDataAccess.h',
                             'Classes/ICRMCmmDataAccess.h',
                             'Classes/DataAccessManager/ICRMCoreBase.h',
                             'Classes/DataAccessManager/ICRMCoreReference.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_Dashboard.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_Filet.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_PersonalDailyView.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_SPIREtablissementDetail.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_SPIRActivite.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_OperationCom.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_Pam.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_PrecomSuiviCA.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_PrecomSyntheseClient.h',
                             'Classes/DataAccessManager/ICRMCoreDataAccess_PrecomDocumentClient.h',
                             'Classes/Models/**/*.h'
    cs.resources = 'Assets/**/*.*'

    cs.dependency 'NSData+Base64', '~>1.0.0'
    cs.dependency 'Reachability', '~>3.1.1'
    cs.dependency 'GRMustache', '~>4.0.0'
    cs.dependency 'LibWSKit', '~>2.0.0'
    cs.dependency 'LibSpirCore', '~>1.3.19'
    cs.dependency 'LibSpirAuthentication/Base', '~>2.2.8'
    cs.dependency 'GData-XMLSupport', '~>1.12.0'
    cs.dependency 'LibLog', '~>0.1'

    cs.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"','CLANG_ENABLE_OBJC_ARC' => 'YES'}
  end
end
