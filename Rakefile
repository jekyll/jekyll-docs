require "bundler/gem_tasks"

task :build => :set_revision

def sha_for_rev(rev)
  `cd site && git rev-parse #{rev}`.strip
end

task :set_revision do
  require File.expand_path("lib/jekyll-docs/version.rb")
  git_rev = "v#{Jekyll::Docs::VERSION}"

  if sha_for_rev(git_rev) == sha_for_rev("HEAD")
    puts "site submodule: already checked out at #{git_rev}"
  else
    puts "site submodule: setting git revision to #{git_rev}"
    `cd site && git checkout #{git_rev}`
    puts "Now run that command again!"
    abort
  end
end
