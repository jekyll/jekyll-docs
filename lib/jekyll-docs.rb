# frozen_string_literal: true

require "jekyll"

module JekyllDocs
  class DocsCommand < Jekyll::Command
    class << self
      def init_with_program(prog)
        prog.command(:docs) do |cmd|
          cmd.description "Start a local server for the Jekyll documentation"
          cmd.syntax "docs [options]"
          cmd.alias :d

          cmd.option "port", "-P [PORT]", "--port [PORT]", "Port to listen on."

          cmd.action do |_, opts|
            JekyllDocs::DocsCommand.process(opts)
          end
        end
      end

      def process(opts)
        options = opts.merge({
          "serving"            => true,
          "watch"              => false,
          "destination"        => File.expand_path("../site", __dir__),
          "skip_initial_build" => true,
        })
        Jekyll::Commands::Serve.process(options)
      end
    end
  end
end
