## jekyll-docs

This gem is how we ship the docs on jekyllrb.com to users who want local, offline access to the docs.

### Installing

Replace `<JEKYLL_VERSION>` with the version of Jekyll you wish to use (e.g. `3.8.1`) and run:

```
gem install jekyll-docs -v <JEKYLL_VERSION>
```

Or, add it to your `Gemfile`:

```ruby
gem 'jekyll-docs', '<JEKYLL_VERSION>'
```

Then, run `bundle install`.

### Usage

:warning: You can not generate the documentation website in an existing Jekyll source folder.

Once installed, you have to ensure you're using the same version of Jekyll and jekyll-docs:

```console
$ jekyll _<JEKYLL_VERSION>_ docs
$ # If you want Jekyll v3.8.1, you have to run:
$ jekyll _3.8.1_ docs
```
:smile:

### Building

```console
$ export JEKYLL_VERSION=3.8.1 # (or whatever)
$ bundle install
$ bundle exec rake build
```

Now you have it in `pkg/jekyll-docs-3.8.1.gem`.

### Releasing

Ensure the tag for the version is available on the `jekyll/jekyll` repo in the form of `vVERSION`, e.g. `v3.8.1`.

```console
$ export JEKYLL_VERSION=3.8.1
$ script/bootstrap
$ bundle exec rake release
```

Made a mistake? You can release another version of jekyll-docs by running
the following:

```console
$ export JEKYLL_VERSION=3.8.1
$ export JEKYLL_DOCS_VERSION=${JEKYLL_VERSION}.1 # Increment .1 to .2 if this is your second fix, etc.
$ script/bootstrap
$ bundle exec rake release
```
