# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'middleman-sitemap-ping'

Gem::Specification.new do |gem|
  gem.name          = 'middleman-sitemap-ping'
  gem.version       = Middleman::SitemapPing::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.author        = 'Manuel Meurer'
  gem.email         = 'manuel@krautcomputing.com'
  gem.summary       = 'Middleman extension to ping search engines with a sitemap'
  gem.description   = 'Middleman extension to ping search engines with a sitemap'
  gem.homepage      = 'http://bootstrap-ruby.github.io/middleman-sitemap-ping'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r(^bin/)).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r(^(test|spec|features)/))
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rake', '~> 10.0'
  gem.add_runtime_dependency 'middleman-core', '>= 3.0'
end
