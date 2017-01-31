# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nba_scoring_leaders/version'

Gem::Specification.new do |spec|
  spec.name          = "nba-scoring-leaders"
  spec.version       = NbaScoringLeaders::VERSION
  spec.date          = '2017-01-31'
  spec.authors       = ["Brett Cline"]
  spec.email         = ["btcline04@gmail.com"]
  spec.summary       = "A list of the yearly NBA Scoring Leaders."
  spec.homepage      = "https://github.com/btcline04/NBAScoringLeaders"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "nokogiri"
end
