require 'spec_helper'

describe 'Fonetica' do
  context 'BR = BL = B' do
    it '"broco" and "bloco" should fonetica to "BK"' do
      'broco'.foneticalize.should == 'BK'
      'bloco'.foneticalize.should == 'BK'
    end
  end

  context 'CA = CO = CU = CK = K' do
    it '"casa" and "kasa" should fonetica to "KS"' do
      'casa'.foneticalize.should == 'KS'
      'kasa'.foneticalize.should == 'KS'
    end

    it '"coroar" and "koroar" should fonetica to "KR"' do
      'coroar'.foneticalize.should == 'KR'
      'koroar'.foneticalize.should == 'KR'
    end

    it '"cuba" and "kuba" should fonetica to "KB"' do
      'cuba'.foneticalize.should == 'KB'
      'kuba'.foneticalize.should == 'KB'
    end
  end

  context 'CE = CI = Ç = S' do
    it '"cela" and "sela" should fonetica to "SR"' do
      'cela'.foneticalize.should == 'SR'
      'sela'.foneticalize.should == 'SR'
    end

    it '"circo" and "sirco" should fonetica to "SRK"' do
      'circo'.foneticalize.should == 'SRK'
      'sirco'.foneticalize.should == 'SRK'
    end

    it '"roça" and "rosa" should fonetica to "RS"' do
      'roça'.foneticalize.should == 'RS'
      'rosa'.foneticalize.should == 'RS'
    end
  end

  context 'CH = X = S' do
    it '"ameixa" and "ameicha" should fonetica to "MS"' do
      'ameixa'.foneticalize.should == 'MS'
      'ameicha'.foneticalize.should == 'MS'
    end
  end

  context 'CS = S' do
    it '"toracs" and "torax" should fonetica to "TR"' do
      'toracs'.foneticalize.should == 'TR'
      'torax'.foneticalize.should == 'TR'
    end
  end

  context 'CT = T' do
    it '"compactar" and "compatar" should fonetica to "KMPT"' do
      'compactar'.foneticalize.should == 'KMPT'
      'compatar'.foneticalize.should == 'KMPT'
    end
  end

  context 'BT = T' do
    it '"batista" and "baptista" should fonetica to "BT"' do
      'batista'.foneticalize.should == 'BT'
      'baptista'.foneticalize.should == 'BT'
    end
  end

  context 'GA = GO = GU = GL = GR = G' do
    it '"gana" should fonetica to "KMPT"' do
      'gana'.foneticalize.should == 'GM'
    end

    it '"gostar" should fonetica to "GT"' do
      'gostar'.foneticalize.should == 'GT'
    end

    it '"guabiru" should fonetica to "GBR"' do
      'guabiru'.foneticalize.should == 'GBR'
    end

    it '"negro" and "nego" should fonetica to "MG"' do
      'negro'.foneticalize.should == 'MG'
      'nego'.foneticalize.should == 'MG'
    end

    it '"hieróglifo" and "hierógrifo" should fonetica to "RGF"' do
      'hieróglifo'.foneticalize.should == 'RGF'
      'hierógrifo'.foneticalize.should == 'RGF'
    end
  end

  context 'GE = GI = J' do
    it '"gene" should fonetica to "JM"' do
      'gene'.foneticalize.should == 'JM'
    end

    it '"gibi" should fonetica to "JB"' do
      'gibi'.foneticalize.should == 'JB'
    end
  end

  context 'GM = M' do
    it '"fleugma" should fonetica to "FRM"' do
      'fleugma'.foneticalize.should == 'FRM'
    end
  end

  context 'L = R' do
    it '"luminar" and "ruminar" should fonetica to "RM"' do
      'luminar'.foneticalize.should == 'RM'
      'ruminar'.foneticalize.should == 'RM'
    end
  end

  context 'N = M' do
    it '"mudez" and "nudez" should fonetica to "MD"' do
      'mudez'.foneticalize.should == 'MD'
      'nudez'.foneticalize.should == 'MD'
    end
  end

  context 'MD = D' do
    it '"comendo" and "comeno" should fonetica to "KM"' do
      'comendo'.foneticalize.should == 'KM'
      'comeno'.foneticalize.should == 'KM'
    end
  end

  context 'MG = G and MJ = J' do
    it '"bunginganga" and "bugiganga" should fonetica to "BJG"' do
      'bunginganga'.foneticalize.should == 'BJG'
      'bugiganga'.foneticalize.should == 'BJG'
    end
  end

  context 'PH = F' do
    it '"philipe" and "felipe" should fonetica to "FRP"' do
      'philipe'.foneticalize.should == 'FRP'
      'felipe'.foneticalize.should == 'FRP'
    end
  end

  context 'PR = P' do
    it '"estupro" and "estrupo" should fonetica to "TP"' do
      'estupro'.foneticalize.should == 'TP'
      'estrupo'.foneticalize.should == 'TP'
    end
  end

  context 'Q = K' do
    it '"queijo" and "keijo" should fonetica to "KJ"' do
      'queijo'.foneticalize.should == 'KJ'
      'keijo'.foneticalize.should == 'KJ'
    end
  end

  context 'RG = G, RS = S, and RT = T' do
    it '"lagarto" and "largato" should fonetica to "RGT"' do
      'lagarto'.foneticalize.should == 'RGT'
      'largato'.foneticalize.should == 'RGT'
    end

    it '"perspectiva" and "pespectiva" should fonetica to "PSPTV"' do
      'perspectiva'.foneticalize.should == 'PSPTV'
      'pespectiva'.foneticalize.should == 'PSPTV'
    end

    it '"lagartixa" and "largatixa" should fonetica to "RGTS"' do
      'lagartixa'.foneticalize.should == 'RGTS'
      'largatixa'.foneticalize.should == 'RGTS'
    end
  end

  context 'RM = SM' do
    it '"mesmo" and "mermo" should fonetica to "MSM"' do
      'mesmo'.foneticalize.should == 'MSM'
      'mermo'.foneticalize.should == 'MSM'
    end
  end

  context 'RJ = J' do
    it '"virgem" and "vige" should fonetica to "VJ"' do
      'virgem'.foneticalize.should == 'VJ'
      'vige'.foneticalize.should == 'VJ'
    end
  end

  context 'ST = T' do
    it '"superstição" and "supertição" should fonetica to "SPTS"' do
      'superstição'.foneticalize.should == 'SPTS'
      'supertição'.foneticalize.should == 'SPTS'
    end
  end

  context 'TR = T, TL = T, and TS = T' do
    it '"estupro" and "estrupo" should fonetica to "TP"' do
      'estupro'.foneticalize.should == 'TP'
      'estrupo'.foneticalize.should == 'TP'
    end

    it '"contrato" and "contlato" should fonetica to "KMT"' do
      'contrato'.foneticalize.should == 'KMT'
      'contlato'.foneticalize.should == 'KMT'
    end

    it '"kubitscheck" and "kubixeque" should fonetica to "KBSK"' do
      'kubitscheck'.foneticalize.should == 'KBSK'
      'kubixeque'.foneticalize.should == 'KBSK'
    end
  end

  context 'W = V' do
    it '"walter" and "valter" should fonetica to "VT"' do
      'walter'.foneticalize.should == 'VT'
      'valter'.foneticalize.should == 'VT'
    end
  end

  context 'X = S' do
    it '"exceder" and "esceder" should fonetica to "SD"' do
      'exceder'.foneticalize.should == 'SD'
      'esceder'.foneticalize.should == 'SD'
    end
  end

  context 'Y = I' do
    it '"yara" and "iara" should fonetica to "R"' do
      'yara'.foneticalize.should == 'R'
      'iara'.foneticalize.should == 'R'
    end
  end

  context 'Z = S' do
    it '"casa" and "caza" should fonetica to "KS"' do
      'casa'.foneticalize.should == 'KS'
      'caza'.foneticalize.should == 'KS'
    end
  end
end
