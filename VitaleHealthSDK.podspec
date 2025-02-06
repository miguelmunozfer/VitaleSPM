Pod::Spec.new do |spec|
  spec.name         = "VitaleHealthSDK"
  spec.version      = "1.0.0"
  spec.summary      = "VitaleHealthSDK para integración con servicios de salud"
  spec.description  = "Un SDK que proporciona funcionalidades avanzadas para salud y nutrición."
  spec.homepage     = "https://github.com/miguelmunozfer/VitaleSPM"
  spec.license      = { :type => "MIT" }
  spec.author       = { "Miguel Muñoz" => "miguel.munoz@myvitale.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/miguelmunozfer/VitaleSPM.git", :tag => "#{spec.version}" }

  # Framework binario
  spec.vendored_frameworks = "VitaleHealthSDK.xcframework"

  # Dependencias externas
  spec.dependency 'NutritionSDK', '~> 2.3.0'
  spec.dependency 'WorkoutLib', '~> 1.8.4'

  # Configuración de Swift
  spec.swift_version = "5.5"
end