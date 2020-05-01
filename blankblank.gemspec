# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blankblank/version'

Gem::Specification.new do |spec|
  spec.name          = 'blankblank'
  spec.version       = Blankblank::VERSION
  spec.authors       = ['Arthur Neves']
  spec.email         = ['arthurnn@gmail.com']
  spec.summary       = 'Write a short summary. Required.'
  spec.description   = 'Write a longer description. Optional.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.metadata = { 'issue_tracker' => 'https://example/issues' }

  spec.add_development_dependency 'bundler', '> 1'
  spec.add_development_dependency 'rake', '~> 10.0'
end
