# fonetica

Fonetica implements the [BuscaBR algorithm](http://www.unibratec.com.br/jornadacientifica/diretorio/NOVOB.pdf) to match misspelled or ambiguous names at Brazil.

## The Story

One day I had to perform a phonetic search on a people database using the [Soundex alghoritm](http://en.wikipedia.org/wiki/Soundex) but didn't work for names at Brazil like "Wagner Batista" and "Vagner Baptista".

Then Google suggested me to read the [BuscaBR algorithm](http://www.unibratec.com.br/jornadacientifica/diretorio/NOVOB.pdf).

## Usage

``` ruby
require 'fonetica'

'wagner batista'.foneticalize #=> "VM BT"
'vagner baptista'.foneticalize #=> "VM BT"
```

### Using with ActiveRecord

You can use the fonetica to search on ActiveRecord like this:

``` ruby
class Person < ActiveRecord::Base
  scope :search, lambda { |name| where(arel_table[:fonetica].matches("#{name.foneticalize}%")) }

  before_save :foneticalize

  protected

  def foneticalize
    self.fonetica = name.foneticalize
  end
end
```

If you want to match any part, you should change scope to:

``` ruby
scope :search, lambda { |name| where(arel_table[:fonetica].matches("%#{name.foneticalize}%")) }
```

Remember to add a index on fonetica column:

``` ruby
class AddFoneticaToPeople < ActiveRecord::Migration
  def change
    add_column :people, :fonetica, :string
    add_index :people, :fonetica
  end
end
````

## How to contribute

Please ensure that you provide appropriate test coverage and ensure the documentation is up-to-date. Bonus points if you perform your changes in a clean topic branch rather than master, and if you create a pull request for your changes to be discussed and reviewed.

Please also keep your commits **atomic** so that they are more likely to apply cleanly. That means that each commit should contain the smallest possible logical change. Don't commit two features at once, don't update the gemspec at the same time you add a feature, don't fix a whole bunch of whitespace in a file at the same time you change a few lines, etc, etc.

## Development environment

``` bash
$ git clone https://github.com/nohupbrasil/fonetica
$ cd fonetica
$ bundle install
$ rake test
```

## License

Fonetica is hosted on Github: https://github.com/nohupbrasil/fonetica, where your contributions, forkings, comments and feedback are greatly welcomed.

Copyright (c) 2010-2012 nohup brasil, released under the MIT license.
