Pod::Spec.new do |s|
  s.name             = 'iOSExtensions'
  s.version          = '0.1.0'
  s.summary          = 'A short description of iOSExtensions.'
  s.description      = 'A not so short description of iOSExtensions.'

  s.homepage         = 'https://github.com/pablo.manuelli@gmail.com/iOSExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pablo.manuelli@gmail.com' => 'pablo.manuelli@etermax.com' }
  s.source           = { :git => 'https://github.com/pablo.manuelli@gmail.com/iOSExtensions.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.default_subspecs = 'Swift', 'UIKit'
  
  s.subspec 'Swift' do |s|
    s.source_files = 'iOSExtensions/Classes/Swift/**/*.swift'
  end
  
  s.subspec 'UIKit' do |s|
    s.source_files = 'iOSExtensions/Classes/UIKit/**/*.swift'
  end
  
  s.subspec 'RxSwift' do |s|
    s.source_files = 'iOSExtensions/Classes/RxSwift/**/*.swift'
    s.dependency 'RxSwift'
  end

end
