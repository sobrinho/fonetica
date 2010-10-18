require 'spec_helper'

describe 'ActiveRecord' do
  it 'should respond to has_fonetica_for' do
    Person.should respond_to :has_fonetica_for
  end
  
  context 'with fonetica' do
    before do
      Person.has_fonetica_for :name
    end

    it 'should create a scope named fonetica' do
      Person.should respond_to :fonetica
    end
  
    it 'should set fonetica_column and fonetica_cache_column' do
      Person.fonetica_column.should == :name
      Person.fonetica_cache_column.should == :fonetica_name
    end
    
    it 'should find records using first name' do
      Person.create(:name => 'iara santos')
      Person.create(:name => 'yara santos')
      
      Person.fonetica('iara').should have(2).records
    end
    
    it 'should find records using first and last name' do
      Person.create(:name => 'joao baptista')
      Person.create(:name => 'joao batista')
      
      Person.fonetica('joao batista').should have(2).records
    end
  end
end
