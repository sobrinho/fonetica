# encoding: utf-8
require 'test_helper'

class FoneticaTest < Test::Unit::TestCase
  def test_broco_and_bloco
    assert_fonetica 'broco', 'bloco'
  end

  def test_casa_and_kasa
    assert_fonetica 'casa', 'kasa'
  end

  def test_cela_and_sela
    assert_fonetica 'sela', 'cela'
  end

  def test_circo_and_sirco
    assert_fonetica 'circo', 'sirco'
  end

  def test_coroar_and_koroar
    assert_fonetica 'coroar', 'koroar'
  end

  def test_cuba_and_kuba
    assert_fonetica 'cuba', 'kuba'
  end

  def test_roca_and_rosa
    assert_fonetica 'roça', 'rosa'
  end

  def test_ameixa_and_ameicha
    assert_fonetica 'ameixa', 'ameicha'
  end

  def test_toracs_and_torax
    assert_fonetica 'toracs', 'torax'
  end

  def test_compactar_and_compatar
    assert_fonetica 'compactar', 'compatar'
  end

  def test_fleuma_and_fleugma
    assert_fonetica 'fleuma', 'fleugma'
  end

  def test_hieroglifo_and_hierogrifo
    assert_fonetica 'hieroglifo', 'hierogrifo'
  end

  def test_negro_and_nego
    assert_fonetica 'negro', 'nego'
  end

  def test_luminar_and_ruminar
    assert_fonetica 'luminar', 'ruminar'
  end

  def test_mudez_and_nudez
    assert_fonetica 'mudez', 'nudez'
  end

  def test_comendo_and_comeno
    assert_fonetica 'comendo', 'comeno'
  end

  def test_bunginganga_and_bugiganga
    assert_fonetica 'bunginganga', 'bugiganga'
  end

  def test_philipe_and_felipe
    assert_fonetica 'philipe', 'felipe'
  end

  def test_estupro_and_estrupo
    assert_fonetica 'estupro', 'estrupo'
  end

  def test_queijo_and_keijo
    assert_fonetica 'queijo', 'keijo'
  end

  def test_lagarto_and_largarto
    assert_fonetica 'lagarto', 'largarto'
  end

  def test_perspectiva_and_pespectiva
    assert_fonetica 'perspectiva', 'pespectiva'
  end

  def test_lagartixa_and_largatixa
    assert_fonetica 'lagartixa', 'largatixa'
  end

  def test_mesmo_and_mermo
    assert_fonetica 'mesmo', 'mermo'
  end

  def test_virgem_and_virge
    assert_fonetica 'virgem', 'virge'
  end

  def test_supersticao_and_superticao
    assert_fonetica 'supersticao', 'superticao'
  end

  def test_estupro_and_estrupo
    assert_fonetica 'estupro', 'estrupo'
  end

  def test_contrato_and_contlato
    assert_fonetica 'contrato', 'contlato'
  end

  def test_kubitscheck_and_kubixeque
    assert_fonetica 'kubitscheck', 'kubixeque'
  end

  def test_walter_and_valter
    assert_fonetica 'walter', 'valter'
  end

  def test_exceder_and_esceder
    assert_fonetica 'exceder', 'esceder'
  end

  def test_yara_and_iara
    assert_fonetica 'yara', 'iara'
  end

  def test_casa_and_caza
    assert_fonetica 'casa', 'caza'
  end

  def test_wilson_and_uilson
    assert_fonetica 'wilson', 'uilson'
  end

  def test_optico_and_otico
    assert_fonetica 'óptico', 'ótico'
  end

  def test_orgaozinho
    assert_fonetica 'órgãozinho', 'órgaozinho'
  end

  def test_batista_and_baptista
    assert_fonetica 'batista', 'baptista'
  end

  def test_alisson_and_allissonn
    assert_fonetica 'alison', 'allisonn'
  end

  protected

  def assert_fonetica(first, second)
    assert_equal first.foneticalize, second.foneticalize, "#{first.inspect} and #{second.inspect} do not match"
  end
end
