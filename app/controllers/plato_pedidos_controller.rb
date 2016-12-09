class PlatoPedidosController < ApplicationController
  before_action :set_plato_pedido, only: [:show, :edit, :update, :destroy]

  # GET /plato_pedidos
  # GET /plato_pedidos.json
  def index
    @plato_pedidos = PlatoPedido.all
  end

  # GET /plato_pedidos/1
  # GET /plato_pedidos/1.json
  def show
  end

  # GET /plato_pedidos/new
  def new
    @plato_pedido = PlatoPedido.new
  end

  # GET /plato_pedidos/1/edit
  def edit
  end

  # POST /plato_pedidos
  # POST /plato_pedidos.json
  def create
    @plato_pedido = PlatoPedido.new(plato_pedido_params)

    respond_to do |format|
      if @plato_pedido.save
        format.html { redirect_to @plato_pedido, notice: 'Plato pedido was successfully created.' }
        format.json { render :show, status: :created, location: @plato_pedido }
      else
        format.html { render :new }
        format.json { render json: @plato_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plato_pedidos/1
  # PATCH/PUT /plato_pedidos/1.json
  def update
    respond_to do |format|
      if @plato_pedido.update(plato_pedido_params)
        format.html { redirect_to @plato_pedido, notice: 'Plato pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @plato_pedido }
      else
        format.html { render :edit }
        format.json { render json: @plato_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plato_pedidos/1
  # DELETE /plato_pedidos/1.json
  def destroy
    @plato_pedido.destroy
    respond_to do |format|
      format.html { redirect_to plato_pedidos_url, notice: 'Plato pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plato_pedido
      @plato_pedido = PlatoPedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plato_pedido_params
      params.require(:plato_pedido).permit(:plato_id, :pedido_id)
    end
end
