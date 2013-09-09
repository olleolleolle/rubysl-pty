# coding: utf-8
require './lib/rubysl/pty/version'

Gem::Specification.new do |spec|
  spec.name          = "rubysl-pty"
  spec.version       = RubySL::PTY::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.description   = %q{Ruby standard library pty.}
  spec.summary       = %q{Ruby standard library pty.}
  spec.homepage      = "https://github.com/rubysl/rubysl-pty"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.extensions    = ["ext/rubysl/pty/extconf.rb"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mspec", "~> 1.5"
  spec.add_development_dependency "rubysl-prettyprint", "~> 1.0"
end
