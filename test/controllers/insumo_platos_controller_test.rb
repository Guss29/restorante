require 'test_helper'

class InsumoPlatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insumo_plato = insumo_platos(:one)
  end

  test "should get index" do
    get insumo_platos_url
    assert_response :success
  end

  test "should get new" do
    get new_insumo_plato_url
    assert_response :success
  end

  test "should create insumo_plato" do
    assert_difference('InsumoPlato.count') do
      post insumo_platos_url, params: { insumo_plato: { cantidadusada: @insumo_plato.cantidadusada, insumo_id: @insumo_plato.insumo_id, plato_id: @insumo_plato.plato_id, unidadmedida: @insumo_plato.unidadmedida } }
    end

    assert_redirected_to insumo_plato_url(InsumoPlato.last)
  end

  test "should show insumo_plato" do
    get insumo_plato_url(@insumo_plato)
    assert_response :success
  end

  test "should get edit" do
    get edit_insumo_plato_url(@insumo_plato)
    assert_response :success
  end

  test "should update insumo_plato" do
    patch insumo_plato_url(@insumo_plato), params: { insumo_plato: { cantidadusada: @insumo_plato.cantidadusada, insumo_id: @insumo_plato.insumo_id, plato_id: @insumo_plato.plato_id, unidadmedida: @insumo_plato.unidadmedida } }
    assert_redirected_to insumo_plato_url(@insumo_plato)
  end

  test "should destroy insumo_plato" do
    assert_difference('InsumoPlato.count', -1) do
      delete insumo_plato_url(@insumo_plato)
    end

    assert_redirected_to insumo_platos_url
  end
end
