# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transfer_wise/version'

Gem::Specification.new do |spec|
  spec.name          = "transfer_wise"
  spec.version       = TransferWise::VERSION
  spec.authors       = ["Harshvardhan Parihar"]
  spec.email         = ["harsh@milaap.org"]

  spec.summary       = "Ruby gem for TransferWise Apis"
  spec.description   = "Ruby gem for TransferWise Apis"
  spec.homepage      = "https://github.com/Milaap/transferwise-rb"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('rest-client', '>= 1.4', '< 4.0')
  spec.add_runtime_dependency("oauth2".freeze, ["< 2.0", ">= 0.5.0"])
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
