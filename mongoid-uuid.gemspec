# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name = "mongoid-uuid"
  s.version = '0.0.1'
  s.platform = Gem::Platform::RUBY
  s.authors = ["Druzkov Yuri, Kovalenko Alexandr"]
  s.email = ["bad1lamer@gmail.com"]
  s.homepage = "http://github.com/badlamer/mongoid-uuid"
  s.summary = "Uuid fields for mongoid"
  s.description = ""
  s.license = "MIT"

  s.required_ruby_version = ">= 1.9"
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = "mongoid-uuid"

  s.add_runtime_dependency("uuid", [">= 2.3.7"])
  s.add_runtime_dependency("mongoid", ["<= 4.0", ">= 3.0"])
  s.add_development_dependency('rake', ['>= 0.9.2'])
  s.add_development_dependency('rspec', ['~> 2.14'])
  s.add_development_dependency('yard', ['~> 0.8'])

  s.files = Dir.glob("lib/**/*")# + %w(CHANGELOG.md LICENSE README.md
  s.test_files = Dir.glob("spec/**/*")
  s.require_path = 'lib'
end
