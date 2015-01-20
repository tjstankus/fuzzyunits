require 'dotenv'
Dotenv.load

require 'sinatra/base'

$:.unshift File.dirname(__FILE__)
require 'app/routes/activities'


module FocusUnits
  class App < Sinatra::Application
    use Routes::Activities
  end
end
