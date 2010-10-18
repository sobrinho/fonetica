class String
  FONETICA = [
    [/Y/, 'I'],
    [/B[RL]/, 'B'],
    [/PH/, 'F'],
    [/[MNR]G/, 'G'],
    [/G[EI]|[RMN]J/, 'J'],
    [/G[RL]/, 'G'],
    [/C[EIH]/, 'S'],
    [/CT/, 'T'],
    [/CS/, 'S'],
    [/Q|C[AOUK]?/, 'K'],
    [/LH/, 'L'],
    [/RM/, 'SM'],
    [/N/, 'M'],
    [/MD|GM|AO\b/, 'M'],
    [/NH/, 'N'],
    [/PR/, 'P'],
    [/X|TS|C|Z|RS/, 'S'],
    [/T[RL]/, 'T'],
    [/[LRS]T/, 'T'],
    [/W/, 'V'],
    [/[SZRMNL]\b/, ''],
    [/L/, 'R'],
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
