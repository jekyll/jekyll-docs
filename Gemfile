# frozen_string_literal: true

source "https://rubygems.org"
gemspec

gem "rubocop", "~> 0.51.0"

if Dir.exist? "jekyll/docs"
  require "yaml"
  config = YAML.load_file "jekyll/docs/_config.yml"

  gems = []
  gems.concat config["gems"] if config.include? "gems"
  gems.concat config["plugins"] if config.include? "plugins"
  gems << "pygments.rb" if config["highlighter"] == "pygments"
  gems.each { |name| gem name }
end
