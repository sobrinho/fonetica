class String
  FONETICA = [
    [/Y/, 'I'],
    [/BR|BL/, 'B'],
    [/PH/, 'F'],
    [/GR|MG|NG|RG/, 'G'],
    [/GE|GI|RJ|MJ|NJ/, 'J'],
    [/Q|CA|CO|CU|C/, 'K'],
    [/LH/, 'L'],
    [/N|RM|GM|MD|SM|AO$/, 'M'],
    [/NH/, 'N'],
    [/PR/, 'P'],
    [/X|TS|C|Z|RS/, 'S'],
    [/LT|TR|CT|PT|RT|ST/, 'T'],
    [/W/, 'V'],
    [/(S|Z|R|M|N|L)$/, ''],
    [/R/, 'L'],
    [/[AEIOUH]/, '']
  ]
  
  def fonetica
    word = self.gsub(/ç/i, 's') # special case
    word = I18n.transliterate(word).upcase
    
    FONETICA.each do |search, replace|
      word.gsub!(search, replace)
    end
    
    word.squeeze
  end
end
