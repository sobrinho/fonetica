require 'i18n'
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/inflector/transliterate'
require 'fonetica/core_ext/string'

module Fonetica
  extend self

  mattr_accessor :replacements, :instance_writer => false

  self.replacements = [
    ['Y', 'I'],
    [/BR|BL/, 'B'],
    ['PH', 'F'],
    [/MG|NG|RG/, 'G'],
    [/GE|GI|RJ|MJ|NJ/, 'J'],
    [/GR|GL/, 'G'],
    [/CE|CI|CH/, 'S'],
    [/PT|CT/, 'T'],
    ['CS', 'S'],
    [/Q|C|CA|CO|CU|CK/, 'K'],
    ['LH', 'L'],
    ['RM', 'SM'],
    ['N', 'M'],
    [/MD|GM|AO\b/, 'M'],
    ['NH', 'N'],
    ['PR', 'P'],
    [/X|TS|C|Z|RS/, 'S'],
    [/TR|TL/, 'T'],
    [/LT|RT|ST/, 'T'],
    ['W', 'V'],
    [/[SZRMNL]\b/, ''],
    ['L', 'R'],
    [/[AEIOUH]/, '']
  ]

  def foneticalize(word)
    result = word.to_s.gsub(/ç/i, 's')
    result = I18n.transliterate(result).upcase

    replacements.each do |search, replace|
      result.gsub!(search, replace)
    end

    result.squeeze
  end
end
