class CandidaturasController < ApplicationController
  before_action :set_candidatura, only: %i[ show edit update destroy ]

  # GET /candidaturas or /candidaturas.json
  def index
    @candidaturas = Candidatura.all
  end

  # GET /candidaturas/1 or /candidaturas/1.json
  def show
  end

  # GET /candidaturas/new
  def new
    @candidatura = Candidatura.new
    @vagas = Vaga.all
  end

  # GET /candidaturas/1/edit
  def edit
    @candidatura = Candidatura.find(params[:id])
  end

  # POST /candidaturas or /candidaturas.json
  def create
    @candidatura = Candidatura.new(candidatura_params)
    if @candidatura.save
      flash[:success] = 'Candidatura criada com sucesso!'
      redirect_to root_path # Redirecione para a página desejada após a criação da candidatura.
    else
      flash.now[:error] = 'Não foi possível criar a candidatura. Verifique os campos obrigatórios'
      render 'new'
    end
  end

  # PATCH/PUT /candidaturas/1 or /candidaturas/1.json
  def update
    @candidatura = Candidatura.find(params[:id])
    if @candidatura.update(candidatura_params)
      flash[:success] = 'Candidatura editada com sucesso!'
      redirect_to root_path # Redirecione para a página desejada após a edição da candidatura.
    else
      flash.now[:error] = 'Não foi possível editar a candidatura. Verifique os campos obrigatórios.'
      render 'edit'
    end
  end

  # DELETE /candidaturas/1 or /candidaturas/1.json
  def destroy
    @candidatura.destroy

    respond_to do |format|
      format.html { redirect_to candidaturas_url, notice: "Candidatura was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidatura
      @candidatura = Candidatura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def candidatura_params
      params.require(:candidatura).permit(:candidato_id, :empregador_id, :vaga_id, :status, :msg)
    end
end
