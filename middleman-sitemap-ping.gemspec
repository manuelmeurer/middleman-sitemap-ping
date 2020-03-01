lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'middleman-sitemap-ping/version'

Gem::Specification.new do |gem|
  gem.name          = 'middleman-sitemap-ping'
  gem.version       = Middleman::SitemapPing::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.author        = 'Manuel Meurer'
  gem.email         = 'manuel@krautcomputing.com'
  gem.summary       = 'Middleman extension to ping search engines (Google and Bing) with a sitemap URL'
  gem.description   = 'Middleman extension to ping search engines (Google and Bing) with a sitemap URL'
  gem.homepage      = 'http://manuelmeurer.github.io/middleman-sitemap-ping/'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r(^bin/)).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r(^(test|spec|features)/))
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'middleman', '>= 3.1'
end
