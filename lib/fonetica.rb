require 'fonetica/core_ext/string'

module Fonetica
end

if defined?(::Rails::Railtie)
  require 'fonetica/railtie'
end
