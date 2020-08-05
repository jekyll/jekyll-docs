# frozen_string_literal: true

source "https://rubygems.org"
gemspec

gem "rubocop", "~> 0.55.0"

gem "kramdown-parser-gfm" if ENV["JEKYLL_VERSION"].to_s.start_with?("3.9.")

if Dir.exist? "jekyll/docs"
  require "yaml"
  config = YAML.load_file "jekyll/docs/_config.yml"

  gems = []
  gems.concat config["gems"] if config.include? "gems"
  gems.concat config["plugins"] if config.include? "plugins"
  gems << "pygments.rb" if config["highlighter"] == "pygments"
  gems.each { |name| gem name }
end
