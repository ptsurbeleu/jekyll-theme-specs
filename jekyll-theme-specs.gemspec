# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-specs"
  spec.version       = '0.1.0'
  spec.authors       = ["Pavel Tsurbeleu"]
  spec.email         = ["pavel.tsurbeleu@me.com"]

  spec.summary       = %q{Helps you to write & exercise behavior-driven (BDD) specifications for your gem-based Jekyll theme}
  spec.description   = %q{Helps you to write & exercise behavior-driven (BDD) specifications for your gem-based Jekyll theme}
  spec.homepage      = "https://github.com/ptsurbeleu/jekyll-theme-specs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "cucumber", "~> 2.1"
  spec.add_dependency "rspec"
  spec.add_dependency "jekyll", ">= 3.0", "~> 3.1"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
