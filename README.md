# DesidimeApi

Ruby API client for desidime.com

TODO: Documentation, Testing and verify parameters 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'desidime_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install desidime_api

## Usage

require 'desidime_api'

Desidime.client = DesidimeApi.client = DesidimeApi::Connection.new("http", "api.desidime.com", "your client id")

Desidime::Authentication.to_get_access_token(required_parameters)

In Rails

config/initializers/desidime_api.rb

Desidime.client = DesidimeApi.client = DesidimeApi::Connection.new("http", "api.desidime.com", "your client id")


## Testing

cd ~/desidime_api

bundle exec rake test

[Feel free to change your parameters]

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mothirajha/desidime_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

