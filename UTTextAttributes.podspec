Pod::Spec.new do |s|
  s.name         = "UTTextAttributes"
  s.version      = "1.0.0"
  s.license      = { :type => "MIT" }
  s.homepage     = "https://github.com/sebarina/UTTextAttributes"
  s.author       = { "Sebarina" => "sebarinaxu@gmail.com" }
  s.summary      = "An easier way to compose attributed strings"
  s.source       = { :git => "https://github.com/sebarina/UTTextAttributes.git" }

  s.ios.deployment_target = "8.0"

  s.source_files = "Source/**/*"

  s.requires_arc = true
end

