require 'middleman-core'

module Middleman
  class SitemapPing < Extension
    URLS = %w(
      http://www.google.com/webmasters/tools/ping?sitemap=SITEMAP
      http://search.yahooapis.com/SiteExplorerService/V1/ping?sitemap=SITEMAP
      http://submissions.ask.com/ping?sitemap=SITEMAP
      http://webmaster.live.com/ping.aspx?siteMap=SITEMAP
    )

    def initialize(app, options_hash = {})
      super

      require 'open-uri'
    end

    def after_build(builder)
      URLS.each do |url|
        url.sub! 'SITEMAP', '...'
        puts "Pinging #{url}"
        open url do |f|
          if f.status[0] == '200'
            puts 'SUCCESS!'
          else
            puts "ERROR: #{f.status[0]}"
          end
        end
      end
    end
  end
end

require_relative 'middleman-sitemap-ping/version'

Middleman::SitemapPing.register :sitemap_ping
