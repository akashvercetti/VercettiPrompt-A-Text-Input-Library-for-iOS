Pod::Spec.new do |s|
  s.name             = "VercettiPrompt"
  s.version          = "1.1.0"
  s.module_name = 'VercettiPrompt'
  s.summary          = "A highly customizable text input dialog prompt in Swift"
  s.description = 'A highly customizable dialog alert prompt that accepts a text input from the user and handles it via protocol methods'
  s.homepage         = "https://github.com/akashvercetti/VercettiPrompt"
  s.license = { :type => "MIT", :file => "LICENSE.txt" }
  s.author           = { "Akash Malhotra" => "carljohnson.akash@gmail.com" }
  s.requires_arc = true
  s.platform = :ios, '10.0'
  s.swift_version = '5.0'
  s.source = { :git => 'https://github.com/akashvercetti/VercettiPrompt.git', :tag => s.version.to_s }
  s.vendored_frameworks = 'Framework/VercettiPrompt.xcframework'
end