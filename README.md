# Google Contacts Demo (omni-auth gem)

Demo uses the omni-auth gem to load google contacts.

### Required

[Setup Google API Keys](https://richonrails.com/articles/google-authentication-in-ruby-on-rails)

### Installing

```ruby
git clone git@github.com:nathantech2005/rails-omniauth.git
```

```ruby
cd rails-omniauth
```

```ruby
bundle install
```

Copy config/application.yml.example to config/application.yml

```ruby
cp config/application.yml.example config/application.yml
```

Set Keys in config/application.yml

```ruby
OMNIAUTH_PROVIDER_KEY: your_client_id
OMNIAUTH_PROVIDER_SECRET: your_secret
```

Start Server

```ruby
cd rails-omniauth
rails s
```

Go to this address in browser:

```ruby
http://localhost:3000
```

## Built With

[Ruby 2.3.1](https://www.ruby-lang.org/en/news/2016/04/26/ruby-2-3-1-released/)

[Rails 5.0](http://weblog.rubyonrails.org)

## Authors

Peter Karth

Nathan Sire

Carlos Grijalva

Arun Kumar

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

