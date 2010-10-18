require 'fonetica/core_ext/string'
require 'fonetica/railtie' if defined?(Rails)

module Fonetica
  autoload :ActiveRecord, 'fonetica/active_record'
end
