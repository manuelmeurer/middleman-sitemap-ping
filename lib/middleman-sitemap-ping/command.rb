require 'middleman-cli'

module Middleman
  module Cli
    class SitemapPing < Thor::Group
      include Thor::Actions

      check_unknown_options!

      namespace :sitemap_ping

      def self.exit_on_failure?
        true
      end

      def sitemap_ping
        app = Middleman::Application.new do
          config[:mode] = :build
        end
        app.extensions[:sitemap_ping].do_ping self
      end

      Base.register self, 'sitemap_ping', 'sitemap_ping [options]', 'Ping sitemaps'
    end
  end
end
