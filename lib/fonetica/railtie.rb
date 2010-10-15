module Fonetica
  class Railtie < Rails::Railtie
    initializer 'fonetica.active_record' do
      ActiveSupport.on_load :active_record do
        require 'fonetica/active_record'
        include Fonetica::ActiveRecord
      end
    end
  end
end
