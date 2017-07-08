# Jekyll Theme Specs

This gem is a simple wrap up of behavior-driven (BDD) validations borrowed from the original
source code of Jekyll. The only reason it has been extracted into a gem is to be able to validate
gem-based themes for Jekyll using Jekyll's original validation tools & techniques.

All the credits belong to Jekyll's contributors & maintainers. Again, this gem is a
carbon-copy of what is already available in Jekyll's code base in a bit more reusable package.

## Installation

Add this line to your Jekyll's Gemfile:

```ruby
gem 'jekyll-theme-specs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-specs

## Usage

At this point the tool makes quite a few assumptions and very rigid in terms of the configuration options available.

- All your features MUST be placed in `features` folder (Cucumber default);
- Before running your theme's specs, it is a MUST to run `bundle` or `bundle install`;
- Always run the tool via Bundler, eq. `bundle exec theme-specs`;
- You can opt-in for more concise reporting style (Jekyll's favorite) by using `-f Jekyll::Cucumber::Formatter` option, eq. `bundle exec theme-specs -f Jekyll::Cucumber::Formatter`;
- You can blend & validate multiple config files to get desired flavor of Jekyll's configuration on-the-fly (:heart:);
  - `Given I have "_config.yml" configuration file with "theme" set to "<theme name>"`
  - `Given I have "features/comments-off.yml" configuration file with "comments_enabled" set to "false"`
  - `When I run jekyll build --config _config.yml,features/comments-off.yml`
  - `Then I should get a zero exit status`

There is also [`minima-theme-specs`](https://github.com/ptsurbeleu/minima-theme-specs) repository that is a work in progress of building `minima` theme
validations. We will start with a few simple things and expand coverage further.

## Development

...

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ptsurbeleu/jekyll-theme-specs. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
