require 'active_support'

class String
  FONETICA = [
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
  
  def fonetica
    word = gsub(/ç/i, 's') # special case
    word = I18n.transliterate(word).upcase
    
    FONETICA.each do |search, replace|
      word.gsub!(search, replace)
    end
    
    word.squeeze
  end
end
