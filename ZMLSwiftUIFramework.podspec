Pod::Spec.new do |spec|
  spec.name         = "ZMLSwiftUIFramework"
  spec.version      = "0.0.1"
  spec.summary      = "a frame use zml to give view."
  spec.description  = <<-DESC
                    a frame use zml to give view.
                   DESC
  spec.homepage     = "https://github.com/karankarthic/ZMLSwiftUIFramework"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "karankarthic" => "karankarthic1@gmail.com" }
  spec.platform     = :ios, "10.0"
 spec.source       = { :git => "https://github.com/karankarthic/ZMLSwiftUIFramework.git" }  
 spec.source_files = "ZMLSwiftUIFramework","ZMLSwiftUIFramework/**/*.{swift}"
  spec.swift_version = "5.0"
end