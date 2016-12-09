class ProveedorInsumosController < ApplicationController
  before_action :set_proveedor_insumo, only: [:show, :edit, :update, :destroy]

  # GET /proveedor_insumos
  # GET /proveedor_insumos.json
  def index
    @proveedor_insumos = ProveedorInsumo.all
  end

  # GET /proveedor_insumos/1
  # GET /proveedor_insumos/1.json
  def show
  end

  # GET /proveedor_insumos/new
  def new
    @proveedor_insumo = ProveedorInsumo.new
  end

  # GET /proveedor_insumos/1/edit
  def edit
  end

  # POST /proveedor_insumos
  # POST /proveedor_insumos.json
  def create
    @proveedor_insumo = ProveedorInsumo.new(proveedor_insumo_params)

    respond_to do |format|
      if @proveedor_insumo.save
        format.html { redirect_to @proveedor_insumo, notice: 'Proveedor insumo was successfully created.' }
        format.json { render :show, status: :created, location: @proveedor_insumo }
      else
        format.html { render :new }
        format.json { render json: @proveedor_insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveedor_insumos/1
  # PATCH/PUT /proveedor_insumos/1.json
  def update
    respond_to do |format|
      if @proveedor_insumo.update(proveedor_insumo_params)
        format.html { redirect_to @proveedor_insumo, notice: 'Proveedor insumo was successfully updated.' }
        format.json { render :show, status: :ok, location: @proveedor_insumo }
      else
        format.html { render :edit }
        format.json { render json: @proveedor_insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedor_insumos/1
  # DELETE /proveedor_insumos/1.json
  def destroy
    @proveedor_insumo.destroy
    respond_to do |format|
      format.html { redirect_to proveedor_insumos_url, notice: 'Proveedor insumo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor_insumo
      @proveedor_insumo = ProveedorInsumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proveedor_insumo_params
      params.require(:proveedor_insumo).permit(:precio, :proveedor_id, :insumo_id)
    end
end
