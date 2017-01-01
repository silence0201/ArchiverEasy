Pod::Spec.new do |s|
  s.name         = "ArchiverEasy"
  s.version      = "1.0"
  s.summary      = "Easy Use NSKeyedUnarchiver And NSKeyedArchiver"
  s.description  = <<-DESC
                      iOS Category to Easy Use NSKeyedUnarchiver And NSKeyedArchiver
                   DESC
  s.homepage     = "https://github.com/silence0201/ArchiverEasy"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.platform     = :ios
  s.author             = { "Silence" => "374619540@qq.com" }
  s.source       = { :git => "https://github.com/silence0201/ArchiverEasy.git", :tag => "1.0" }
  s.source_files  = "ArchiverEasy", "ArchiverEasy/*.{h,m}"
  s.exclude_files = "ArchiverEasy/Exclude"

  s.requires_arc = true
  s.public_header_files = "ArchiverEasy/*.h"
  s.requires_arc = true
end
