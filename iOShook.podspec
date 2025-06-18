Pod::Spec.new do |s|
  s.name             = 'iOShook'
  s.version          = '1.0.0'
  s.summary          = 'Shared Git hooks for iOS projects'
  s.description      = 'This pod installs pre-commit hooks to run unit tests before committing.'
 s.homepage         = 'https://bitbucket.org/your-team/iOShook'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'you@example.com' }
 s.source           = { :git => 'https://bitbucket.org/ipcSystems/iOShook.git', :tag => s.version }

  s.ios.deployment_target = '11.0'
  s.source_files     = []
  s.resources        = []
  s.preserve_paths   = 'Hooks'
  s.script_phase = {
    :name => 'Install Git Hooks',
    :script => <<-SCRIPT
      echo "🔗 Installing pre-commit hook..."
      cp -f ${PODS_TARGET_SRCROOT}/Hooks/pre-commit ${PODS_TARGET_SRCROOT}/.git/hooks/pre-commit
      chmod +x ${PODS_TARGET_SRCROOT}/.git/hooks/pre-commit
    SCRIPT
  }
end
