require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "sn-textview"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  sn-textview
                   DESC
  s.homepage     = "https://github.com/standardnotes/sn-textview"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Radek Czemerys" => "radek@standardnotes.org" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/standardnotes/sn-textview.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React-Core"
end

