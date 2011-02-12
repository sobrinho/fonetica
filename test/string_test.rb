# encoding: utf-8
require 'test_helper'

class StringTest < ActiveSupport::TestCase
  test 'broco and bloco should fonetica to BK' do
    assert_equal 'BK', 'broco'.foneticalize
    assert_equal 'BK', 'bloco'.foneticalize
  end

  test 'casa and kasa should fonetica to KS' do
    assert_equal 'KS', 'casa'.foneticalize
    assert_equal 'KS', 'kasa'.foneticalize
  end

  test 'coroar and koroar should fonetica to KR' do
    assert_equal 'KR', 'coroar'.foneticalize
    assert_equal 'KR', 'koroar'.foneticalize
  end

  test 'cuba and kuba should fonetica to KB' do
    assert_equal 'KB', 'cuba'.foneticalize
    assert_equal 'KB', 'kuba'.foneticalize
  end

  test 'cela and sela should fonetica to SR' do
    assert_equal 'SR', 'cela'.foneticalize
    assert_equal 'SR', 'sela'.foneticalize
  end

  test 'circo and sirco should fonetica to SRK' do
    assert_equal 'SRK', 'circo'.foneticalize
    assert_equal 'SRK', 'sirco'.foneticalize
  end

  test 'roça and rosa should fonetica to RS' do
    assert_equal 'RS', 'roça'.foneticalize
    assert_equal 'RS', 'rosa'.foneticalize
  end

  test 'ameixa and ameicha should fonetica to MS' do
    assert_equal 'MS', 'ameixa'.foneticalize
    assert_equal 'MS', 'ameicha'.foneticalize
  end

  test 'toracs and torax should fonetica to TR' do
    assert_equal 'TR', 'toracs'.foneticalize
    assert_equal 'TR', 'torax'.foneticalize
  end

  test 'compactar and compatar should fonetica to KMPT' do
    assert_equal 'KMPT', 'compactar'.foneticalize
    assert_equal 'KMPT', 'compatar'.foneticalize
  end

  test 'batista and baptista should fonetica to BT' do
    assert_equal 'BT', 'batista'.foneticalize
    assert_equal 'BT', 'baptista'.foneticalize
  end

  test 'gana should fonetica to KMPT' do
    assert_equal 'GM', 'gana'.foneticalize
  end

  test 'gostar should fonetica to GT' do
    assert_equal 'GT', 'gostar'.foneticalize
  end

  test 'guabiru should fonetica to GBR' do
    assert_equal 'GBR', 'guabiru'.foneticalize
  end

  test 'negro and nego should fonetica to MG' do
    assert_equal 'MG', 'negro'.foneticalize
    assert_equal 'MG', 'nego'.foneticalize
  end

  test 'hieróglifo and hierógrifo should fonetica to RGF' do
    assert_equal 'RGF', 'hieróglifo'.foneticalize
    assert_equal 'RGF', 'hierógrifo'.foneticalize
  end

  test 'gene should fonetica to JM' do
    assert_equal 'JM', 'gene'.foneticalize
  end

  test 'gibi should fonetica to JB' do
    assert_equal 'JB', 'gibi'.foneticalize
  end

  test 'fleugma should fonetica to FRM' do
    assert_equal 'FRM', 'fleugma'.foneticalize
  end

  test 'luminar and ruminar should fonetica to RM' do
    assert_equal 'RM', 'luminar'.foneticalize
    assert_equal 'RM', 'ruminar'.foneticalize
  end

  test 'mudez and nudez should fonetica to MD' do
    assert_equal 'MD', 'mudez'.foneticalize
    assert_equal 'MD', 'nudez'.foneticalize
  end

  test 'comendo and comeno should fonetica to KM' do
    assert_equal 'KM', 'comendo'.foneticalize
    assert_equal 'KM', 'comeno'.foneticalize
  end

  test 'bunginganga and bugiganga should fonetica to BJG' do
    assert_equal 'BJG', 'bunginganga'.foneticalize
    assert_equal 'BJG', 'bugiganga'.foneticalize
  end

  test 'philipe and felipe should fonetica to FRP' do
    assert_equal 'FRP', 'philipe'.foneticalize
    assert_equal 'FRP', 'felipe'.foneticalize
  end

  test 'queijo and keijo should fonetica to KJ' do
    assert_equal 'KJ', 'queijo'.foneticalize
    assert_equal 'KJ', 'keijo'.foneticalize
  end

  test 'lagarto and largato should fonetica to RGT' do
    assert_equal 'RGT', 'lagarto'.foneticalize
    assert_equal 'RGT', 'largato'.foneticalize
  end

  test 'perspectiva and pespectiva should fonetica to PSPTV' do
    assert_equal 'PSPTV', 'perspectiva'.foneticalize
    assert_equal 'PSPTV', 'pespectiva'.foneticalize
  end

  test 'lagartixa and largatixa should fonetica to RGTS' do
    assert_equal 'RGTS', 'lagartixa'.foneticalize
    assert_equal 'RGTS', 'largatixa'.foneticalize
  end

  test 'mesmo and mermo should fonetica to MSM' do
    assert_equal 'MSM', 'mesmo'.foneticalize
    assert_equal 'MSM', 'mermo'.foneticalize
  end

  test 'virgem and vige should fonetica to VJ' do
    assert_equal 'VJ', 'virgem'.foneticalize
    assert_equal 'VJ', 'vige'.foneticalize
  end

  test 'superstição and supertição should fonetica to SPTS' do
    assert_equal 'SPTS', 'superstição'.foneticalize
    assert_equal 'SPTS', 'supertição'.foneticalize
  end

  test 'estupro and estrupo should fonetica to TP' do
    assert_equal 'TP', 'estupro'.foneticalize
    assert_equal 'TP', 'estrupo'.foneticalize
  end

  test 'contrato and contlato should fonetica to KMT' do
    assert_equal 'KMT', 'contrato'.foneticalize
    assert_equal 'KMT', 'contlato'.foneticalize
  end

  test 'kubitscheck and kubixeque should fonetica to KBSK' do
    assert_equal 'KBSK', 'kubitscheck'.foneticalize
    assert_equal 'KBSK', 'kubixeque'.foneticalize
  end

  test 'walter and valter should fonetica to VT' do
    assert_equal 'VT', 'walter'.foneticalize
    assert_equal 'VT', 'valter'.foneticalize
  end

  test 'exceder and esceder should fonetica to SD' do
    assert_equal 'SD', 'exceder'.foneticalize
    assert_equal 'SD', 'esceder'.foneticalize
  end

  test 'yara and iara should fonetica to R' do
    assert_equal 'R', 'yara'.foneticalize
    assert_equal 'R', 'iara'.foneticalize
  end

  test 'casa and caza should fonetica to KS' do
    assert_equal 'KS', 'casa'.foneticalize
    assert_equal 'KS', 'caza'.foneticalize
  end
end
