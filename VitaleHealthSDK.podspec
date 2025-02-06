Pod::Spec.new do |spec|
  spec.name         = "VitaleHealthSDK"
  spec.version      = "1.0.0" # Ajusta la versión según corresponda
  spec.summary      = "VitaleHealthSDK para integración con servicios de salud"
  spec.description  = "Un SDK que proporciona funcionalidades avanzadas para salud y nutrición."
  spec.homepage     = "https://github.com/miguelmunozfer/VitaleSPM" # Cambia por la URL real
  spec.license      = { :type => "MIT", :file => "LICENSE" } # Ajusta la licencia según corresponda
  spec.author       = { "Miguel Muñoz" => "tuemail@example.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/miguelmunozfer/VitaleSPM.git", :tag => "#{spec.version}" }

  # Framework binario
  spec.vendored_frameworks = "VitaleHealthSDK.xcframework"

  # Dependencias externas
  s.dependency 'NutritionSDK', '~> 2.3.0'
  s.dependency 'WorkoutLib', '~> 1.8.4'
  # Configuración de Swift
  spec.swift_version = "5.5"
end

