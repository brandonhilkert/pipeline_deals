# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pipeline_deals/version'

Gem::Specification.new do |gem|
  gem.name          = "pipeline_deals"
  gem.version       = PipelineDeals::VERSION
  gem.authors       = ["Brandon Hilkert"]
  gem.email         = ["brandonhilkert@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "faraday", ">= 0.8"
  gem.add_dependency "faraday_middleware"
  gem.add_dependency "multi_json"
  gem.add_dependency "hashie"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
end
