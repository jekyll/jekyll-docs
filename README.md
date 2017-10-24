## jekyll-docs

This gem is how we ship the docs on jekyllrb.com to users who want local, offline access to the docs.

### Installing

Replace `<JEKYLL_VERSION>` with the version of Jekyll you wish to use (e.g. `3.1.2`) and run:

```
gem install jekyll-docs -v <JEKYLL_VERSION>
```

Or, add it to your `Gemfile`:

```ruby
gem 'jekyll-docs', '<JEKYLL_VERSION>'
```

Then, run `bundle install`.

### Usage

Once installed, you have to ensure you're using the same version of Jekyll and jekyll-docs:

```console
$ jekyll _<JEKYLL_VERSION>_ docs
$ # If you want Jekyll v3.1.2, you have to run:
$ jekyll _3.1.2_ docs
```

:smile:

### Building

```console
$ export JEKYLL_VERSION=3.1.1 # (or whatever)
$ bundle install
$ bundle exec rake build
```

Now you have it in `pkg/jekyll-docs-3.1.1.gem`.

### Releasing

Ensure the tag for the version is available on the `jekyll/jekyll` repo in the form of `vVERSION`, e.g. `v3.1.2`.

```console
$ export JEKYLL_VERSION=3.1.2
$ script/bootstrap
$ bundle exec rake release
```
