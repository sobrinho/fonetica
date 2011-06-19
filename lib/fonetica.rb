# encoding: utf-8
require 'singleton'
require 'i18n'
require 'active_support/core_ext/class/attribute'
require 'active_support/inflector/transliterate'
require 'fonetica/core_ext/string'

class Fonetica
  include Singleton

  class_attribute :replacements

  self.replacements = [
    [/BL|BR/, 'B'],
    ['PH', 'F'],
    [/GL|GR|MG|NG|RG/, 'G'],
    ['Y', 'I'],
    [/GE|GI|RJ|MJ/, 'J'],
    [/CA|CO|CU|CK|Q/, 'K'],
    ['N', 'M'],
    [/AO|AUM|GM|MD|OM|ON/, 'M'],
    ['PR', 'P'],
    ['L', 'R'],
    [/CE|CI|CH|CS|RS|TS|X|Z/, 'S'],
    [/TR|TL/, 'T'],
    [/CT|RT|ST|PT/, 'T'],
    [/\b[UW]/, 'V'],
    ['RM', 'SM'],
    [/[MRS]\b/, ''],
    [/[AEIOUH]/, '']
  ]

  def foneticalize(word)
    result = word.gsub(/ç/i, 's')
    result = I18n.transliterate(result).upcase

    replacements.each do |search, replace|
      result.gsub!(search, replace)
    end

    result.squeeze
  end
end
