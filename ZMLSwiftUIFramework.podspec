Pod::Spec.new do |spec|
  spec.name         = "ZMLSwiftUIFramework"
  spec.version      = "0.0.4"
  spec.summary      = "a frame use zml to give view."
  spec.description  = <<-DESC
                    a frame use zml to give view.
                   DESC
  spec.homepage     = "https://github.com/karankarthic/ZMLSwiftUIFramework"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "karankarthic" => "karankarthic1@gmail.com" }
  spec.platform     = :ios, "13.0"
 spec.source       = { :git => "https://github.com/karankarthic/ZMLSwiftUIFramework.git" }  
 spec.source_files = "ZMLSwiftUIFramework","ZMLSwiftUIFramework/**/*.{swift}"
 spec.dependency 'ZMLKit', '0.0.23'
  spec.swift_version = "5.0"
end