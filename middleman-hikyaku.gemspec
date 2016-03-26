# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-hikyaku/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-hikyaku"
  spec.version       = Middleman::Hikyaku::VERSION
  spec.authors       = ["Yusuke Nakamura"]
  spec.email         = ["yusuke1994525@gmail.com"]

  spec.summary       = %q{Deploy static site build with middleman by gh-pages, rsync, or sftp.}
  spec.description   = %q{Deploy static site build with middleman by gh-pages, rsync, or sftp. Compatible middleman-deploy.}
  spec.homepage      = "https://github.com/unasuke/middleman-hikyaku"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "middleman", "~> 4.0"
  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
