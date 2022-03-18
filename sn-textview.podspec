# frozen_string_literal: true

require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'sn-textview'
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = <<-DESC
                  sn-textview
  DESC
  s.homepage     = 'https://github.com/standardnotes/sn-textview'
  s.license      = 'AGPLv3'
  s.authors      = 'Standard Notes'
  s.platforms    = { ios: '9.0' }
  s.source       = { git: 'https://github.com/standardnotes/sn-textview.git', tag: s.version.to_s }

  s.source_files = 'ios/**/*.{h,m,swift}'
  s.requires_arc = true

  s.dependency 'React-Core'
end
