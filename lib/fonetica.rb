require 'fonetica/string'

module Fonetica
end

if defined?(::Rails::Railtie)
  require 'fonetica/railtie'
end
