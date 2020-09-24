Pod::Spec.new do |s|
  s.name = 'PermissionScope'
  s.version = '1.2.0'
  s.license = 'MIT'
  s.summary = 'A Periscope-inspired way to ask for iOS permissions'
  s.homepage = 'https://github.com/nickoneill/PermissionScope'
  s.social_media_url = 'https://twitter.com/objctoswift'
  s.authors = { "Nick O'Neill" => 'nick.oneill@gmail.com' }
  s.source = { :git => 'https://github.com/nickoneill/PermissionScope.git', :tag => s.version }

  s.ios.deployment_target = '9.0'

  s.source_files = 'PermissionScope/*.swift'

  s.swift_versions = ['5.0']
  s.requires_arc = true
end
