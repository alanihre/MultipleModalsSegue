Pod::Spec.new do |s|
  s.name                = "MultipleModalsSegue"
  s.version             = "1.1"
  s.summary             = "Segue for displaying multiple view controllers modally at once"
  s.homepage            = "https://github.com/alanihre/MultipleModalsSegue"
  s.platform            = :ios, '7.0'
  s.source              = { :git => "https://github.com/alanihre/MultipleModalsSegue.git", :tag => s.version.to_s }
  s.source_files        = 'MultipleModalsSegue/*.{h,m}'
  s.requires_arc        = true
  s.author              = { "Alan Ihre" => "alan.ihre@alanihre.se" }
  s.license             = 'MIT'
end