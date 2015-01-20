require_relative 'base'

module FocusUnits
  module Routes
    class Activities < Base
      get '/' do
        'Hello from FocusUnits!'
      end
    end
  end
end

