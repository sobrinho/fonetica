module Fonetica
  module ActiveRecord
    extend ActiveSupport::Concern
  
    module ClassMethods
      def has_fonetica_for(column)
        cattr_accessor :fonetica_column, :fonetica_cache_column
        
        self.fonetica_column = column
        self.fonetica_cache_column = :"fonetica_#{column}"
        
        scope :fonetica, lambda { |fonetica|
          {
            :conditions => ["#{quoted_table_name}.#{fonetica_cache_column} LIKE ?", "#{fonetica.to_s.fonetica}%"]
          }
        }
        
        before_save :update_fonetica
      end
    end
  
    module InstanceMethods
      def update_fonetica
        write_attribute(fonetica_cache_column, read_attribute(fonetica_column).to_s.fonetica)
      end
    end
  end
end
