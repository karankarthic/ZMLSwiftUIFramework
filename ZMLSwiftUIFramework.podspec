Pod::Spec.new do |spec|
  spec.name         = "ZMLSwiftUIFramework"
  spec.version      = "0.0.3"
  spec.summary      = "a frame use zml to give view."
  spec.homepage     = "https://github.com/karankarthic/ZMLSwiftUIFramework"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "karankarthic" => "karankarthic1@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/karankarthic/ZMLSwiftUIFramework.git" }  
  spec.source_files = "ZMLSwiftUIFramework","ZMLSwiftUIFramework/**/*.{swift}" 
  spec.dependency 'ZMLKit', '0.0.23'
  spec.swift_version = "5.0"
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end