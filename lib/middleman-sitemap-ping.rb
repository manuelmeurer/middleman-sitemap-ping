require 'middleman-core'

module Middleman
  class SitemapPing < Extension
    SERVICES = {
      google: 'http://www.google.com/webmasters/tools/ping?sitemap=SITEMAP_URL',
      bing:   'http://www.bing.com/ping?sitemap=SITEMAP_URL'
    }

    SERVICES.each_key do |service|
      option "ping_#{service}".to_sym, true, "Ping #{service.capitalize}?"
    end
    option :host,         nil,           'The host of your website'
    option :sitemap_file, 'sitemap.xml', 'The name of your sitemap file'

    def initialize(app, options_hash = {})
      super

      require 'open-uri'
    end

    def after_build(builder)
      raise 'Please set the `host` option for the sitemap ping extension!' unless host = options.host
      host = "http://#{host}" unless host =~ %r(\Ahttps?://)
      sitemap_url = File.join(host, options.sitemap_file)
      SERVICES.each do |service, url|
        next unless options.send("ping_#{service}")
        url.sub! /SITEMAP_URL\z/, CGI.escape(sitemap_url)
        builder.say "Pinging #{url}"
        open url do |f|
          if f.status[0] == '200'
            builder.say_status :success, 'SUCCESS!', :green
          else
            builder.say_status :error, "ERROR: #{f.status[0]}", :red
          end
        end
      end
    end
  end
end

require_relative 'middleman-sitemap-ping/version'

Middleman::SitemapPing.register :sitemap_ping
