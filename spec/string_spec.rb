require 'spec_helper'

describe String do
  context 'BR = BL = B' do
    it '"broco" and "bloco" should fonetica to "BK"' do
      'broco'.fonetica.should == 'BK'
      'bloco'.fonetica.should == 'BK'
    end
  end
  
  context 'CA = CO = CU = CK = K' do
    it '"casa" and "kasa" should fonetica to "KS"' do
      'casa'.fonetica.should == 'KS'
      'kasa'.fonetica.should == 'KS'
    end
    
    it '"coroar" and "koroar" should fonetica to "KR"' do
      'coroar'.fonetica.should == 'KR'
      'koroar'.fonetica.should == 'KR'
    end
    
    it '"cuba" and "kuba" should fonetica to "KB"' do
      'cuba'.fonetica.should == 'KB'
      'kuba'.fonetica.should == 'KB'
    end
  end
  
  context 'CE = CI = Ç = S' do
    it '"cela" and "sela" should fonetica to "SR"' do
      'cela'.fonetica.should == 'SR'
      'sela'.fonetica.should == 'SR'
    end
    
    it '"circo" and "sirco" should fonetica to "SRK"' do
      'circo'.fonetica.should == 'SRK'
      'sirco'.fonetica.should == 'SRK'
    end
    
    it '"roça" and "rosa" should fonetica to "RS"' do
      'roça'.fonetica.should == 'RS'
      'rosa'.fonetica.should == 'RS'
    end
  end
  
  context 'CH = X = S' do
    it '"ameixa" and "ameicha" should fonetica to "MS"' do
      'ameixa'.fonetica.should == 'MS'
      'ameicha'.fonetica.should == 'MS'
    end
  end
  
  context 'CS = S' do
    it '"toracs" and "torax" should fonetica to "TR"' do
      'toracs'.fonetica.should == 'TR'
      'torax'.fonetica.should == 'TR'
    end
  end
  
  context 'CT = T' do
    it '"compactar" and "compatar" should fonetica to "KMPT"' do
      'compactar'.fonetica.should == 'KMPT'
      'compatar'.fonetica.should == 'KMPT'
    end
  end
  
  context 'GA = GO = GU = GL = GR = G' do
    it '"gana" should fonetica to "KMPT"' do
      'gana'.fonetica.should == 'GM'
    end

    it '"gostar" should fonetica to "GT"' do
      'gostar'.fonetica.should == 'GT'
    end

    it '"guabiru" should fonetica to "GBR"' do
      'guabiru'.fonetica.should == 'GBR'
    end
    
    it '"negro" and "nego" should fonetica to "MG"' do
      'negro'.fonetica.should == 'MG'
      'nego'.fonetica.should == 'MG'
    end

    it '"hieróglifo" and "hierógrifo" should fonetica to "RGF"' do
      'hieróglifo'.fonetica.should == 'RGF'
      'hierógrifo'.fonetica.should == 'RGF'
    end
  end
  
  context 'GE = GI = J' do
    it '"gene" should fonetica to "JM"' do
      'gene'.fonetica.should == 'JM'
    end

    it '"gibi" should fonetica to "JB"' do
      'gibi'.fonetica.should == 'JB'
    end
  end
  
  context 'GM = M' do
    it '"fleugma" should fonetica to "FRM"' do
      'fleugma'.fonetica.should == 'FRM'
    end
  end
  
  context 'L = R' do
    it '"luminar" and "ruminar" should fonetica to "RM"' do
      'luminar'.fonetica.should == 'RM'
      'ruminar'.fonetica.should == 'RM'
    end
  end
  
  context 'N = M' do
    it '"mudez" and "nudez" should fonetica to "MD"' do
      'mudez'.fonetica.should == 'MD'
      'nudez'.fonetica.should == 'MD'
    end
  end
  
  context 'MD = D' do
    it '"comendo" and "comeno" should fonetica to "KM"' do
      'comendo'.fonetica.should == 'KM'
      'comeno'.fonetica.should == 'KM'
    end
  end
  
  context 'MG = G and MJ = J' do
    it '"bunginganga" and "bugiganga" should fonetica to "BJG"' do
      'bunginganga'.fonetica.should == 'BJG'
      'bugiganga'.fonetica.should == 'BJG'
    end
  end
  
  context 'PH = F and PR = P' do
    it '"philipe" and "felipe" should fonetica to "FRP"' do
      'philipe'.fonetica.should == 'FRP'
      'felipe'.fonetica.should == 'FRP'
    end
  end
  
  context 'PR = P' do
    it '"estupro" and "estrupo" should fonetica to "TP"' do
      'estupro'.fonetica.should == 'TP'
      'estrupo'.fonetica.should == 'TP'
    end
  end
  
  context 'Q = K' do
    it '"queijo" and "keijo" should fonetica to "KJ"' do
      'queijo'.fonetica.should == 'KJ'
      'keijo'.fonetica.should == 'KJ'
    end
  end
  
  context 'RG = G, RS = S, and RT = T' do
    it '"lagarto" and "largato" should fonetica to "RGT"' do
      'lagarto'.fonetica.should == 'RGT'
      'largato'.fonetica.should == 'RGT'
    end

    it '"perspectiva" and "pespectiva" should fonetica to "PSPTV"' do
      'perspectiva'.fonetica.should == 'PSPTV'
      'pespectiva'.fonetica.should == 'PSPTV'
    end

    it '"lagartixa" and "largatixa" should fonetica to "RGTS"' do
      'lagartixa'.fonetica.should == 'RGTS'
      'largatixa'.fonetica.should == 'RGTS'
    end
  end

  context 'RM = SM' do
    it '"mesmo" and "mermo" should fonetica to "MSM"' do
      'mesmo'.fonetica.should == 'MSM'
      'mermo'.fonetica.should == 'MSM'
    end
  end
  
  context 'RJ = J' do
    it '"virgem" and "vige" should fonetica to "VJ"' do
      'virgem'.fonetica.should == 'VJ'
      'vige'.fonetica.should == 'VJ'
    end
  end
  
  context 'ST = T' do
    it '"superstição" and "supertição" should fonetica to "SPTS"' do
      'superstição'.fonetica.should == 'SPTS'
      'supertição'.fonetica.should == 'SPTS'
    end
  end
  
  context 'TR = T, TL = T, and TS = T' do
    it '"estupro" and "estrupo" should fonetica to "TP"' do
      'estupro'.fonetica.should == 'TP'
      'estrupo'.fonetica.should == 'TP'
    end

    it '"contrato" and "contlato" should fonetica to "KMT"' do
      'contrato'.fonetica.should == 'KMT'
      'contlato'.fonetica.should == 'KMT'
    end

    it '"kubitscheck" and "kubixeque" should fonetica to "KBSK"' do
      'kubitscheck'.fonetica.should == 'KBSK'
      'kubixeque'.fonetica.should == 'KBSK'
    end
  end

  context 'W = V' do
    it '"walter" and "valter" should fonetica to "VT"' do
      'walter'.fonetica.should == 'VT'
      'valter'.fonetica.should == 'VT'
    end
  end
  
  context 'X = S' do
    it '"exceder" and "esceder" should fonetica to "SD"' do
      'exceder'.fonetica.should == 'SD'
      'esceder'.fonetica.should == 'SD'
    end
  end
  
  context 'Y = I' do
    it '"yara" and "iara" should fonetica to "R"' do
      'yara'.fonetica.should == 'R'
      'iara'.fonetica.should == 'R'
    end
  end
  
  context 'Z = S' do
    it '"casa" and "caza" should fonetica to "KS"' do
      'casa'.fonetica.should == 'KS'
      'caza'.fonetica.should == 'KS'
    end
  end
end
