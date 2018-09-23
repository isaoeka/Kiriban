Pod::Spec.new do |s|
  s.name         = "Kiriban-Swift"
  s.version      = "0.0.1"
  s.summary      = "Swift extension of kiriban for ios app."
  s.description  = <<-DESC
                   - Judge the kiriban / zoroban / renban.
                   DESC
  s.homepage     = "https://github.com/isaoeka/Kiriban-Swift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Isao Kono" => "isaoeka@gmail.com" }
  s.social_media_url   = "http://twitter.com/isaoeka"
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/isaoeka/Kiriban-Swift.git", :tag => s.version }
  s.source_files  = "Kiriban/*.swift"
end
