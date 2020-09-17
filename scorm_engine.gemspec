lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "scorm_engine/version"

Gem::Specification.new do |spec|
  spec.name          = "scorm_engine"
  spec.version       = ScormEngine::VERSION
  spec.authors       = ["Philip Hallstrom", "Mel Green"]
  spec.email         = ["phallstrom@instructure.com", "mgreen@instructure.com"]

  spec.summary       = "Ruby Client for Rustici's SCORM Engine API"
  spec.description   = "Ruby Client for Rustici's SCORM Engine 2017.1 & 20.1 API"
  spec.homepage      = "https://github.com/instructure-bridge/scorm_engine"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{lib,spec}/**/*") + %w[Rakefile .rspec]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 1.0.1"
  spec.add_dependency "faraday_middleware", "~> 1.0.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "dotenv", "~> 2.4"
  spec.add_development_dependency "pry", "~> 0.11"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.56"
  spec.add_development_dependency "rubyzip", "~> 1.2"
  spec.add_development_dependency "vcr", "~> 4.0"
  spec.add_development_dependency "yard", "~> 0.9"
end
