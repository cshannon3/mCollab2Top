# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

So for setup with mongo db used : https://blog.botreetechnologies.com/setting-up-ruby-on-rails-5-app-with-mongodb-in-10-minutes-3c400c055262
and the mongo site: https://docs.mongodb.com/mongoid/master/tutorials/mongoid-installation/

added gem 'mongoid', '~> 7.0' and gem 'bson_ext' to gemfile

bundle install

rails g mongoid:config

rake db:create to create mongoid.yml file

create a model with

rails g scaffold challenge title:string description:text difficulty:integer githubusername:string

create a controller

rails g controller challenges new show index edit

SETTING UP omniauth : https://richonrails.com/articles/github-authentication-in-ruby-on-rails

added gem 'omniauth-github' to gemfiles

bundle install

// followed instructions on site to add files

rails g model User username avatar_url email uid provider oauth_token

rails g controller sessions new create destroy

// more instructions on setup

SETTING UP BOOTSTRAP

gem 'bootstrap-sass', '~> 3.3.7'
gem 'sass-rails', '~> 5.0'
gem 'jquery-rails'

in application.css change to scss and replace code with:
// Bootstrap
@import "bootstrap-sprockets";
@import "bootstrap";

in application.js replace code with:

//= require jquery
//= require bootstrap-sprockets
//= require rails-ujs
//= require turbolinks
//= require_tree .

Added navigation bar from previous projects into layouts
and added code for it into application.html.erb


Next wanted to set up entries
used: https://github.com/lalitlogical/ruby-on-rails-with-mongodb asexample




created entry
rails g scaffold Entry title:string url:string score:integer
 // Used above tutorial for setup

 GITHUB Part

 