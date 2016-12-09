require 'test_helper'

class ProveedorInsumosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proveedor_insumo = proveedor_insumos(:one)
  end

  test "should get index" do
    get proveedor_insumos_url
    assert_response :success
  end

  test "should get new" do
    get new_proveedor_insumo_url
    assert_response :success
  end

  test "should create proveedor_insumo" do
    assert_difference('ProveedorInsumo.count') do
      post proveedor_insumos_url, params: { proveedor_insumo: { insumo_id: @proveedor_insumo.insumo_id, precio: @proveedor_insumo.precio, proveedor_id: @proveedor_insumo.proveedor_id } }
    end

    assert_redirected_to proveedor_insumo_url(ProveedorInsumo.last)
  end

  test "should show proveedor_insumo" do
    get proveedor_insumo_url(@proveedor_insumo)
    assert_response :success
  end

  test "should get edit" do
    get edit_proveedor_insumo_url(@proveedor_insumo)
    assert_response :success
  end

  test "should update proveedor_insumo" do
    patch proveedor_insumo_url(@proveedor_insumo), params: { proveedor_insumo: { insumo_id: @proveedor_insumo.insumo_id, precio: @proveedor_insumo.precio, proveedor_id: @proveedor_insumo.proveedor_id } }
    assert_redirected_to proveedor_insumo_url(@proveedor_insumo)
  end

  test "should destroy proveedor_insumo" do
    assert_difference('ProveedorInsumo.count', -1) do
      delete proveedor_insumo_url(@proveedor_insumo)
    end

    assert_redirected_to proveedor_insumos_url
  end
end
