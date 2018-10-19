class CampeonatosController < ApplicationController
  before_action :set_campeonato, only: [:show, :edit, :update, :destroy]

  # GET /campeonatos
  # GET /campeonatos.json
  def index
    @q = Campeonato.ransack(params[:q])
    @campeonatos = @q.result.order(name: :asc)
  end

  # GET /campeonatos/1
  # GET /campeonatos/1.json
  def show
  end

  # GET /campeonatos/new
  def new
    @campeonato = Campeonato.new
  end

  # GET /campeonatos/1/edit
  def edit
  end

  # POST /campeonatos
  # POST /campeonatos.json
  def create
    @campeonato = Campeonato.new(campeonato_params)

    respond_to do |format|
      if @campeonato.save
        format.html { redirect_to @campeonato, notice: 'Campeonato was successfully created.' }
        format.json { render :show, status: :created, location: @campeonato }
      else
        format.html { render :new }
        format.json { render json: @campeonato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campeonatos/1
  # PATCH/PUT /campeonatos/1.json
  def update
    respond_to do |format|
      if @campeonato.update(campeonato_params)
        format.html { redirect_to @campeonato, notice: 'Campeonato was successfully updated.' }
        format.json { render :show, status: :ok, location: @campeonato }
      else
        format.html { render :edit }
        format.json { render json: @campeonato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campeonatos/1
  # DELETE /campeonatos/1.json
  def destroy
    @campeonato.destroy
    respond_to do |format|
      format.html { redirect_to campeonatos_url, notice: 'Campeonato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campeonato
      @campeonato = Campeonato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campeonato_params
      params.require(:campeonato).permit(:name, :description)
    end
end
