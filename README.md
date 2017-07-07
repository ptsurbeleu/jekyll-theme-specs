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

## Development

...

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ptsurbeleu/jekyll-theme-specs. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).