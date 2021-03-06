require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name     = "react-native-sqlite-storage"
  s.version  = package['version']
  s.summary  = package['description']
  s.homepage = "https://github.com/wonderfulmobileworld/React-Native-SQLite"
  s.source   = { :git => package['repository']['url'], :tag => "v#{s.version}" }

  s.platform = :ios, "8.0"

  s.preserve_paths = 'package.json', 'sqlite.js'
  s.source_files   = "src/ios/*.{h,m}"

  s.dependency 'React'
  s.library = 'sqlite3'
end
