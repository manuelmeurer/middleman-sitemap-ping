# Middleman Sitemap Ping

[![Gem Version](https://badge.fury.io/rb/middleman-sitemap-ping.png)](http://badge.fury.io/rb/middleman-sitemap-ping)
[![Build Status](https://secure.travis-ci.org/bootstrap-ruby/middleman-sitemap-ping.png)](http://travis-ci.org/bootstrap-ruby/middleman-sitemap-ping)
[![Dependency Status](https://gemnasium.com/bootstrap-ruby/middleman-sitemap-ping.png)](https://gemnasium.com/bootstrap-ruby/middleman-sitemap-ping)
[![Code Climate](https://codeclimate.com/github/bootstrap-ruby/middleman-sitemap-ping.png)](https://codeclimate.com/github/bootstrap-ruby/middleman-sitemap-ping)

[Middleman](https://middlemanapp.com/) extension to ping search engines (Google and Bing) with a sitemap URL

## Installation

Add this line to your application's Gemfile:

    gem 'middleman-sitemap-ping'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install middleman-sitemap-ping

## Usage

### Activate extension

Activate the extensions in `config.rb` in your Middleman app:

```ruby
activate :sitemap_ping do |config|
  config.host         = 'http://www.mywebsite.com'  # The host of your website      (required)
  config.sitemap_file = 'custom-sitemap-file.xml'   # The name of your sitemap file (optional, default: sitemap.xml)
  config.ping_google  = false                       # Ping Google?                  (optional, default: true)
  config.ping_bing    = false                       # Ping Bing?                    (optional, default: true)
end
```

Once the extension is activated, it will ping the search engines automatically every time your site is built.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
