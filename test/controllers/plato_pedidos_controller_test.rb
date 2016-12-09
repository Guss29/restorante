require 'test_helper'

class PlatoPedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plato_pedido = plato_pedidos(:one)
  end

  test "should get index" do
    get plato_pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_plato_pedido_url
    assert_response :success
  end

  test "should create plato_pedido" do
    assert_difference('PlatoPedido.count') do
      post plato_pedidos_url, params: { plato_pedido: { pedido_id: @plato_pedido.pedido_id, plato_id: @plato_pedido.plato_id } }
    end

    assert_redirected_to plato_pedido_url(PlatoPedido.last)
  end

  test "should show plato_pedido" do
    get plato_pedido_url(@plato_pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_plato_pedido_url(@plato_pedido)
    assert_response :success
  end

  test "should update plato_pedido" do
    patch plato_pedido_url(@plato_pedido), params: { plato_pedido: { pedido_id: @plato_pedido.pedido_id, plato_id: @plato_pedido.plato_id } }
    assert_redirected_to plato_pedido_url(@plato_pedido)
  end

  test "should destroy plato_pedido" do
    assert_difference('PlatoPedido.count', -1) do
      delete plato_pedido_url(@plato_pedido)
    end

    assert_redirected_to plato_pedidos_url
  end
end
