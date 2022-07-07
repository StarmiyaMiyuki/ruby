
Rails is a `web application framework` developed by David Heinemeier Hansson.
root files are application.html.erb and application.css, application.js.
Rails supports `Webpack` and `Yarn`

# Get Started

```shell
# install
gem install rails
# create app
rails new "APP_NAME"
# api mode without view
rails new "APP_NAME" --api -d "DATABASE" -T # with database without default testing
# run app
bin/rails server # = rails server
# cloud 9 set up
rvm use 2.6.6
```


## install modules

```shell
# config to install without modules for production
bundle config set --local without 'production'
#update
bundle update
# install modules in Gemfile
bundle install
# init webpacker
rails webpacker:install
```


## Directory structure

- Model: app/models/
- View: app/views/
  - Layout: layouts/
- Controller: app/controllers/
- Helper: app/helpers/
- Router: config/routes.rb
- DB Schema: db/schema.rb
- Asset: app/assets/
  - Image: images/
  - CSS: stylesheets/
- Test: test/
- Gem: Gemfile


## MVC model

- data flow
  - from client: Browser -> Path(routing) with HTTP method -> Controller -> Model -> DB
  - from DB: DB(query) -> Model(instance method) -> Controller(instance var) -> View(render) -> Browser 

# Routing

file: config/routes.rb
it maps path to Controller

```ruby
Rails.application.routes.draw do
  
  root 'Controllers#homePath'
  # HTTP method
  get 'path', to: 'controller#action'
  # namespace
  namespace :PRE_PATH do
  end
  # resourceful routing with option
  resources :controllers, only: %i[index, ...]
end
```

## Named URL

```ruby:config/routes.rb
# prev
get 'path' => 'controller#action'
# next
get '/path', to: 'controller#action'
```

show all routes
```shell
rails routes
```

## Resourceful Routing

```rb:config/routes.rb
  resources :controllers
```

```shell
      Prefix Verb   URI Pattern                  Controller#Action
        root GET    /                            ctrls#index
       ctrls GET    /ctrls(.:format)          ctrls#index
 new_article GET    /ctrls/new(.:format)      ctrls#new
     article GET    /ctrls/:id(.:format)      ctrls#show
             POST   /ctrls(.:format)          ctrls#create
edit_article GET    /ctrls/:id/edit(.:format) ctrls#edit
             PATCH  /ctrls/:id(.:format)      ctrls#update
             DELETE /ctrls/:id(.:format)      ctrls#destroy
```


# Controller

generate controllers
  - create app/controllers/Controller.rb
  - create app/views/controller/action/html.erb
  - create test/controllers/Controller_text.rb
  - create app/helpers/Controller_helper.rb
  - create app/assets/javascripts/Controller.coffee
  - create app/assets/stylesheets/Controller.scss
  - route get '*'

```shell
# controller
rails generate controller "Controllers_name" "actions"
# remove
rails destroy controller "Controllers_name" "actions"
```

## Syntax

```ruby
# @foo = instance variables refered to in global scope

# run private actions before run actions
before_action :private_action, only: [:index, ...]

# resource route actions
def index
  # some action
end

# private scope
private

def private_action
end
```

## Helper

it is helper `function`. it can be reused in every .rb or .erb files

- app/controllers/helpers/*_helper.rb

## methods

- render: It renders object to browser. it renders View template as default. you can customize template that you wanna render
  - inline: inline HTML.erb
  - plain: plain text
  - html: HTML
  - json: JSON
  - status: return HTTP status
- redirect_to: redirect other path
  ex; redirect_to tasks_path status: 301
- head: return HTTP header


# View

Rails refer to view/ folders that consists index.html.erb, show.html.erb, and more.

- application.html.erb: top html file. this is template file for all view files
  - yield: this is function() or variable that is embedded from other component files
- other component files
  - provide: this sends props to template file by helper function

application.html.erb
```ruby
# write sample
<%= yield %>
```

others.html.erb
```ruby
<%= provide %>
```

## Template Engine(Embedded ruby)

it it html file with embedded ruby. it makes `View` role in app

```ruby
# with output
<%=  %>
# without output
<%  %>
# add attribute
<%= , attribute: value %>

# render partial
<%= render "layouts/partial" %>

# link to another pages in views/
<%= link_to "Home", "/home"  %>
# with name path. below is same as above
<%= link_to "Home", home_path %>

# receive props
<%= yield(:props) %>
# send props
<% provide(:props, value) %>

# create form with model
<%= form_with(model: @model, local: true) do |f| %>
  <%= f.label :value %>
  <%= f."type_field" :value %>
<% end %>
# create form without model
<%= form_with(url: pathName_path, scope: :controller, local: true) do |f| %>
  <%= f.label :value %>
  <%= f."type_field" :value %>
<% end %>
```

## Partial

you can insert partials into any .erb View files. it is HTML component.

partial.html.erb
```html
<p>This is partial</p>
```

view.html.erb
```ruby
<%= render "partial" %>
<%= render "shared/partial" %>
```

- render args
  - partial: specify partial
  - locals: send props as Object to partial
  - collection: loop render props

- partial sources
  - app/views/shared/_partial.html.erb
  - app/views/_partial.html.erb


## react-rails

ref: [react-rails](https://github.com/reactjs/react-rails)

### Get started with webpack and TypeScript
```shell
rails webpacker:install:react
rails generate react:install
bundle exec rails webpacker:install:typescript
yarn add @types/react @types/react-dom
```

This gives you:
- app/javascript/components/ directory for your React components
- ReactRailsUJS setup in app/javascript/packs/application.js
- app/javascript/packs/server_rendering.js for server-side rendering

rails generate React Component. this adds component to app/javascript/components/
```shell
rails g react:component "ComponentName" "variable:type"
```

call React component in .erb file
```ruby
<%= react_component("ComponentName", { variable: "data" }) %>
```

# Model

it is a Class Object.

generate model. it automatically generate "created_at" and "updated_at" fields
  - create db/migrate/*.models.rb
  - create app/models/model.rb
  - create test/models/model_test.rb
  - create test/fixtures/models.yml
```ruby
# model
rails generate model "Model_name" "column:type"
# create sub table
rails generate model "Model_name" "column:type" "parent_table:references"
# remove
rails destroy model "Model_name"
```

rails db
```ruby
# create database
rails db:create
# create table from model
rails db:migrate
rails db:migrate RAILS_ENV=production # migrate into production env
# drop database
rails db:drop
# drop table
rails db:rollback
# drop and create database
rails db:reset
# fields reset
rails db:migrate:reset
# restore init version
rails db:migrate VERSION=0
# migrate schema
rails generate migration "addColumnToModels" "column:type"
# insert seed from db/seeds.rb
rails db:seed
```

## Syntax

```ruby
# model association
## many to one
belongs_to :model
## one to many
has_many :model
## one to one
has_one :model
### destroy wich child model
has_many :model, dependent: :destroy

# life cycle actions

# validate
validates :column, options:
## options
presence: true
length: { maximum: integer, message: 'some message' }
```


## ORM(Object Relational Mapping)

Rails's ORM is `Active Record`. 

- model = class(db/migrate/model.rb) named singular with capitalized first letter
- teble = schema(db/migrate/schema.rb) named plural words

- types
  - :binary
  - :boolean
  - :date
  - :datetime
  - :decimal
  - :float
  - :integer
  - :primary_key
  - :string
  - :text
  - :time
  - :timestamp

create
```ruby
field1 = Model.new do |f|
  f.column1 = value1
  f.column2 = value2
end
field1.save
# following is equivalent
field1 = Model.create(column1: value1, column2: value2)
```
read
```ruby
# full-table scan
Model.all
# get first field
Model.first
# get last field
Model.last
# get by column
Model.find_by(column: value)
# WHERE, ORDER, LIMIT
Model.where(column: value).order(column: :desc).limit(n)
```
update
```ruby
field = Model.find_by(column: value)
field.update(column: new_value)
```
delete
```ruby
# delete single field
Model.destroy_by(column: value)
# delete all fields
Model.destroy_all
```

## constraints

following is validation key and value
  - presence: true or false = NOT NULL
  - uniqueness: true or false, { case_sensitive: false } = UNIQUE
  - length: { maximum: x, minimum: y, message: "error message" }
  - format: { with: ReExpression, message: "error message" }

app/models/model.rb
```ruby:app/models/model.rb
  validates :column, key: value
```

rails console
```ruby:rails console
  f = Model.new({})
  f.valid? # true or false
  f.errors.full_messages # return error messages
```

## SQL methods

- annotate: 
- count: COUNT()
- create_with: 
- distinct: 
- eager_load: 
- extending: 
- extract_associated: 
- find: find by id
- find_by: find by some columns
- first: return first record as Object
- last: return last record as Object
- from: 
- group: GROUP BY
- having: HAVING. it is WHERE after using GROUP BY
- includes: 
- joins: 
- left_outer_joins: 
- limit: LIMIT. it returns Relation not Array
- lock: 
- none: 
- offset: OFFSET
- optimizer_hints: 
- order: ORDER BY. asc or desc
- preload: 
- readonly: 
- references: 
- reorder: 
- reselect: 
- reverse_order: 
- select: SELECT
- where: WHERE


## encrypt password

install bcrypt

```shell:Gemfile
gem 'bcrypt' '3.1.13'
# install on shell
bundle install
```

enable has_secure_password in model.rb.
it make "password_digest" column into schema.rb.
user should put "password" and "password_confirmation" values

```rb:app/models/model.rb
  has_secure_password
```

```shell:rails console
user = User.find_by(*)
user.authenticate("password") # return instance or false
```


# Test

write test/

- methods
  - assert(test, [msg]): ensures that test is true
  - assert_not(test, [msg]): ensures that test is false
  - assert_equal(expected, actual, [msg]): ensures that expected == actual is true
  - assert_empty(obj, [msg]): ensures that obj is empty?
  - assert_match(regexp, string, [msg]): ensures that a string matched the regular expression
  
  - assert_no_difference(expression) do: asserts that the numeric result of evaluating an expression is not changed before and after invoking the passed in block


make test colorful
```ruby
# make test code color GREEN or RED
require 'minitest/reporters'
Minitest::Reporters.use!
```

## Integration test

```ruby
# create test file
rails generate integration_test "test_name"
# run test code
rails test:integration
```

## fixture

it is test data into db

- test/fuxtures/models.yml

## Guard(test automation)

```ruby
# initialize
bundle exec guard init
# run
bundle exec guard
```

# RSpec

you have to load only once on your computer
```shell
gem install rspec
```

add package
```Gemfile
group :development, :test do
  gem 'rspec-rails', ">= 3.9.0"
end
```

```shell
bundle install
# generate spec/ and rails_helper.rb, spec_helper.rb
bin/rails generate rspec:install
# if you use webpack
bin/rails webpacker:install
```

add only spec file for model
```shell
rails generate rspec:"rspec_type" "model"
```

## RSpec Type

- Model specs: type: :model
- Controller specs: type: :controller
- Request specs: type: :request
- Feature specs: type: :feature
- View specs: type: :view
- Helper specs: type: :helper
- Mailer specs: type: :mailer
- Routing specs: type: :routing
- Job specs: type: :job
- System specs: type: :system

run
```shell
bundle exec rspec
```

# Rubocop

RuboCop is a Ruby static code analyzer (a.k.a. linter) and code formatter

install into Gemfile
```rb
group :development do
  gem 'rubocop'
  gem 'rubocop-rails'
end
```

create .rubocop_todo.yml
```shell
rubocop --auto-gen-config
```

first you have to create .rubocop.yml in project root directory
refer to [.rubocop.yml](https://github.com/rubocop/rubocop/blob/master/.rubocop.yml)
```shell
touch .rubocop.yml
```

run
```shell
bundle exec rubocop
# --auto-correct
bundle exec rubocop -a
# --lint
bundle exec rubocop -l
# --fix-layout
bundle exec rubocop -x
```


# Rails Commands

```shell
# generate controllers or model
rails generate
# run testing
rails test
# exec irb on rails
rails console
rails console --sandbox # don't change db
rails console production # run in production env
# run puma
rails server
rails server --environment production # run puma in production env
rails server RAILS_ENV=production # this is equivalent to above
```

config Cloud9 connection
```ruby
# config/environment/development.rb
  # allow to connect with Cloud9
  config.hosts.clear
```

## Rails environment

```shell
rails s -e "ENVIRONMENT"
```

- running environments
  1. development
  2. test
  3. production

activate ssl
```rb:config/environments/production.rb
  config.force_ssl = true
```

# Webpack

Webpack is build manager for frontend that enable you to manage JavaScript, css, and static assets. it's migrated from Sprockets.

## file locations

- JavaScript: app/javascript
- Webpack config: config/webpacker.yml
- Babel config: babel.config.js


# Heroku commands

you need to push after merge temporary branch to master branch, when you work in another branch but master

create Procfile
```shell:./Procfile
web: bundle exec puma -C config/puma.rb
```

```ruby
# login
heroku login --interactive # don't open browser
# create app
heroku create "APP_NAME"
# rename
heroku raname "NEW_APP_NAME"
# push
git push heroku master
# log
heroku logs
```


