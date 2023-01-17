# GeoScaffold

GeoScaffold generates views with [Geolonia Maps](https://geolonia.com/maps-dev/) for a new resource that has coordinates.

Geolonia Maps can be freely used without API key on [development environments](https://docs.geolonia.com/tutorial/002/#%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83%E3%81%A7%E3%81%AE%E5%88%A9%E7%94%A8%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6) such as localhost, CodePen and JSFiddle etc.

![Demo](geo_scaffold_demo.gif)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geo_scaffold'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install geo_scaffold

## Usage

Generate a model for a new resource that has coordinates.

```
% bin/rails g model <resource name> name:string lng:float lat:float
```

Run the migration.

```
% bin/rails db:migrate
```

Use GeoScaffold generator to create controllers and views.

```
% bin/rails g geo_scaffold:controller <resource name>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/geo_scaffold. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/geo_scaffold/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GeoScaffold project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/geo_scaffold/blob/master/CODE_OF_CONDUCT.md).
