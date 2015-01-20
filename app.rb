require 'bundler'
Bundler.require

require 'dotenv'
Dotenv.load

require 'sinatra/base'

$:.unshift File.dirname(__FILE__)
require 'app/routes/activities'


module FocusUnits
  class App < Sinatra::Application
    configure :development, :test do
      set :db, Sequel.connect(
        adapter: 'postgres',
        host: 'localhost',
        database: "focusunits_sinatra_#{environment}",
        user: ENV['DB_USERNAME'],
        password: ENV['DB_PASSWORD'])
    end

    use Routes::Activities
  end
end
