
  Pod::Spec.new do |s|
    s.name = 'CapacitorPinCheck'
    s.version = '0.0.1'
    s.summary = 'Capacitor plugin that allows your application to check whether pin/keyguard or passcode is setup on iOS and Android phones'
    s.license = 'MIT'
    s.homepage = 'https://github.com/niconaso/capacitor-pin-check'
    s.author = 'Nicolás Naso'
    s.source = { :git => 'https://github.com/niconaso/capacitor-pin-check', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end