Rails API for a proof of concept on using the [lightning deploy method](https://www.youtube.com/watch?v=QZVYP3cPcWQ) of an Ember CLI app with Rails back end.

- - -

The only configuration you should need are the following files:

```ruby
# config/application.yml

REDIS_URL: redis://localhost:6379 # or whatever your local Redis URL is

test:
  DOMAIN: lvh.me

```

and

```ruby
# config/database.yml

# Configure Using Gemfile
# gem 'pg'
#
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: 5

development:
  <<: *default
  database: lightning-api_development

test:
  <<: *default
  database: lightning-api_test


production:
  <<: *default
  database: lightning-api_production
  username: lightning-api
  password: <%= ENV['LIGHTNING-API_DATABASE_PASSWORD'] %>

```

To install, clone repo and run:

```
$ bundle
$ rake db:create
$ rake db:test:prepare
$ rake db:migrate
$ rake db:seed
$ rails s
```

Make sure you've started the [lightning-client](https://github.com/tommywhoops/lightning-client) app, and see the two apps running together at [http://localhost:3000](http://localhost:3000)
