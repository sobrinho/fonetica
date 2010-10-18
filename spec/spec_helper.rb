require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'fonetica'
require 'fonetica/active_record'

ActiveRecord::Base.establish_connection :adapter => 'sqlite3', :database => ':memory:'
ActiveRecord::Migration.verbose = false

ActiveRecord::Schema.define(:version => 0) do
  create_table :people do |t|
    t.string :name
    t.string :fonetica_name
  end
  
  add_index :people, :fonetica_name
end

class Person < ActiveRecord::Base
end

ActiveRecord::Base.send(:include, Fonetica::ActiveRecord)
