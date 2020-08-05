# frozen_string_literal: true

jekyll_version = ENV.fetch("JEKYLL_VERSION")
jekyll_docs_version = ENV.fetch("JEKYLL_DOCS_VERSION", jekyll_version)

Gem::Specification.new do |spec|
  spec.name          = "jekyll-docs"
  spec.version       = jekyll_docs_version
  spec.authors       = ["Parker Moore"]
  spec.email         = ["parkrmoore@gmail.com"]
  spec.summary       = "Offline usage documentation for Jekyll."
  spec.homepage      = "https://jekyllrb.com"
  spec.license       = "MIT"

  spec.files         = Dir["**/*"].grep(%r!^(lib|site)/!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_dependency "jekyll", jekyll_version
  spec.add_development_dependency "rake", "~> 12.0"
end
