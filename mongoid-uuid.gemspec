lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'mongoid/uuid/version'

Gem::Specification.new do |s|
  s.name = 'mongoid-uuid'
  s.version = Mongoid::Uuid::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Yury Druzkov']
  s.email = ['bad1lamer@gmail.com']
  s.homepage = 'http://github.com/badlamer/mongoid-uuid'
  s.summary = 'Uuid fields for mongoid'
  s.description = ''
  s.license = 'MIT'

  s.required_ruby_version = '>= 2.4'
  s.rubyforge_project = 'mongoid-uuid'

  s.add_dependency 'mongoid', '>= 6.0', '< 9'
  s.add_dependency 'uuid', '>= 2.3', '< 3'

  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'yard'

  s.files = Dir.glob('lib/**/*') # + %w(CHANGELOG.md LICENSE README.md
  s.test_files = Dir.glob('spec/**/*')
  s.require_path = 'lib'
end
