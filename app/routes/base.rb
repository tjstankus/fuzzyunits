module FocusUnits
  module Routes
    class Base < Sinatra::Application
      configure do
        set :views, 'app/views'
      end
    end
  end
end
