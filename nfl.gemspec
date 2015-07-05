# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','nfl','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'nfl'
  s.version = Nfl::VERSION
  s.author = 'Taylor Stib'
  s.email = 'taylorstib.dev@gmail.com'
  s.homepage = 'http://taylorstib.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'NFL statistics on the command line'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','nfl.rdoc']
  s.rdoc_options << '--title' << 'nfl' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'nfl'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.13.1')
end
