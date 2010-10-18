module Fonetica
  class Railtie < Rails::Railtie
    initializer 'fonetica.active_record' do
      ActiveSupport.on_load(:active_record) do
        include Fonetica::ActiveRecord
      end
    end
  end
end
