Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name = "MyLib"
  s.requires_arc = true
  s.version = "0.1.1"

  s.dependency 'Alamofire', '~> 1.1'
  s.dependency 'Firebase', '2.3.2'

  s.source_files = "MyLib/**/*.{swift}"
  s.source= { :git => "https://github.com/pgherveou/MyLib.git", :tag => s.version }
  s.resources = "MyLib/**/*.{png,jpeg,jpg,storyboard,xib}"
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Firebase"'}

  s.author           = { "PG" => "pg@jogabo.com" }
  s.license          = 'MIT'
  s.homepage         = "http://jogabo.com"
  s.summary          = "test."
end
