class InsumoPlatosController < ApplicationController
  before_action :set_insumo_plato, only: [:show, :edit, :update, :destroy]

  # GET /insumo_platos
  # GET /insumo_platos.json
  def index
    @insumo_platos = InsumoPlato.all
  end

  # GET /insumo_platos/1
  # GET /insumo_platos/1.json
  def show
  end

  # GET /insumo_platos/new
  def new
    @insumo_plato = InsumoPlato.new
  end

  # GET /insumo_platos/1/edit
  def edit
  end

  # POST /insumo_platos
  # POST /insumo_platos.json
  def create
    @insumo_plato = InsumoPlato.new(insumo_plato_params)

    respond_to do |format|
      if @insumo_plato.save
        format.html { redirect_to @insumo_plato, notice: 'Insumo plato was successfully created.' }
        format.json { render :show, status: :created, location: @insumo_plato }
      else
        format.html { render :new }
        format.json { render json: @insumo_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumo_platos/1
  # PATCH/PUT /insumo_platos/1.json
  def update
    respond_to do |format|
      if @insumo_plato.update(insumo_plato_params)
        format.html { redirect_to @insumo_plato, notice: 'Insumo plato was successfully updated.' }
        format.json { render :show, status: :ok, location: @insumo_plato }
      else
        format.html { render :edit }
        format.json { render json: @insumo_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumo_platos/1
  # DELETE /insumo_platos/1.json
  def destroy
    @insumo_plato.destroy
    respond_to do |format|
      format.html { redirect_to insumo_platos_url, notice: 'Insumo plato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumo_plato
      @insumo_plato = InsumoPlato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insumo_plato_params
      params.require(:insumo_plato).permit(:cantidadusada, :unidadmedida, :insumo_id, :plato_id)
    end
end
