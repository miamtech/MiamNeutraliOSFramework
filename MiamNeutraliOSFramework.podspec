Pod::Spec.new do |spec|

  spec.name         = "MiamNeutraliOSFramework"
  spec.version      = "0.0.1"
  spec.summary      = "Miam iOS SDK for Miam Neutral"
  spec.description  = <<-DESC
Miam iOS SDK for Courses U.
                   DESC

  spec.homepage     = "https://www.miam.tech"
  spec.license      = "GPLv3"
  spec.author             = { "Diarmuid McGonagle" => "it@miam.tech" }
  spec.platform     = :ios, "11.0"
  spec.swift_versions = "5.8"
  spec.resources = "Sources/MiamNeutraliOSFramework/Resources/**/*.png"

  
  spec.source       = { :git => "https://github.com/miamtech/coursesU-x-Miam-Framework.git", :tag => "#{spec.version}" }

 
   spec.source_files = 'Sources/**/*.{h,m,swift}'
   
spec.dependency 'MiamIOSFramework', '~> 3.12.6'

end
