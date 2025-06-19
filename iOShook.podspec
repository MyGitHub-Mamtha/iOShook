Pod::Spec.new do |s|
  s.name             = 'iOShook'
  s.version          = '0.1.0'
  s.summary          = 'Shared Git hooks for iOS projects'
  s.description      = 'This pod installs pre-commit hooks to run unit tests before committing'
  s.homepage         = 'https://github.com/MyGitHub-Mamtha/iOShook'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'you@example.com' }
  s.source           = { :git => 'https://github.com/MyGitHub-Mamtha/iOShook', :tag => s.version }

  s.ios.deployment_target = '11.0'
  s.source_files     = '.git/hooks/*'
  s.requires_arc = false
 end
