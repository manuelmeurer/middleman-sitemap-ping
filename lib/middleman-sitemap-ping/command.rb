require 'middleman-core/cli'

module Middleman
  module Cli
    class SitemapPing < Thor
      include Thor::Actions

      check_unknown_options!

      namespace :sitemap_ping

      def self.exit_on_failure?
        true
      end

      desc 'sitemap_ping', 'Ping sitemaps'
      def sitemap_ping
        Middleman::Application.server.inst.extensions[:sitemap_ping].do_ping self
      end
    end
  end
end
