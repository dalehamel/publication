lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'publication/version'

Gem::Specification.new do |s|
  s.name        = 'publication'
  s.version     = Publication::VERSION
  s.date        = '2015-11-24'
  s.summary     = 'Publish from markdown to many formats'
  s.description = 'Use pandoc to easily publish in different formats'
  s.authors     = ['Dale Hamel']
  s.email       = 'dale.hamel@srvthe.net'
  s.files       = Dir['lib/**/*']
  s.homepage    =
    'https://github.com/dalehamel/publication'
  s.license = 'MIT'
  s.add_runtime_dependency 'pandoc-ruby', ['>= 2.0.0']
  s.add_development_dependency 'pry', ['=0.10.3']
  s.add_development_dependency 'pry-byebug', ['=3.3.0']
  s.add_development_dependency 'rake', ['=10.4.2']
  s.add_development_dependency 'simplecov', ['=0.10.0']
  s.add_development_dependency 'rspec', ['=3.2.0']
end
