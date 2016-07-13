source 'https://rubygems.org'
gemspec

if Dir.exist? 'jekyll/site'
  require 'yaml'
  config = YAML.load_file 'jekyll/site/_config.yml'

  gems = []
  gems.concat config['gems'] if config.include? 'gems'
  gems << 'pygments.rb' if config['highlighter'] == 'pygments'

  gems.each { |name| gem name }
end
