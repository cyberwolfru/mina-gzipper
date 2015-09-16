# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/gzipper/version'

Gem::Specification.new do |spec|
  spec.name          = "mina-gzipper"
  spec.version       = Mina::GzipAssets::VERSION
  spec.authors       = ["Vitaly Taras"]
  spec.email         = ["webinsurgut@gmail.com"]
  spec.summary       = %q{Adds a Mina task to gzip all .js and .css files under the assets path.}
  spec.description   = %q{Adds a Mina task to gzip all .js and .css files under the assets path.}
  spec.homepage      = "http://github.com/cyberwolfru/mina-gzipper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.post_install_message = "Make sure you have installed gzip 1.6 on your server!"
end
