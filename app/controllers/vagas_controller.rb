class VagasController < ApplicationController
  before_action :set_vaga, only: %i[ show edit update destroy ]

  # GET /vagas or /vagas.json
  def index
    @vagas = Vaga.all
  end

  # GET /vagas/1 or /vagas/1.json
  def show
    @vaga = Vaga.find(params[:id])
  end

  # GET /vagas/new
  def new
    @vaga = Vaga.new
  end

  # GET /vagas/1/edit
  def edit
    @vaga = Vaga.find(params[id])
  end

  # POST /vagas or /vagas.json
  def create
    @vaga = Vaga.new(vaga_params)

    respond_to do |format|

      if @vaga.save
        redirect_to @vaga, notice: 'Vaga criada com sucesso'
      else
        render 'new'
      end
    end
  end

  # PATCH/PUT /vagas/1 or /vagas/1.json
  def update
    @vaga = Vaga.find(params[:id])
    if @vaga.update(vaga_params)
      flash[:success] = 'Vaga atualizada com sucesso!'
      redirect_to @vaga
    else
      render 'edit'
    end
  end

  # DELETE /vagas/1 or /vagas/1.json
  def destroy
    @vaga = Vaga.find(params[:id])
    @vaga.destroy
    flash[:success] = 'Vaga removida com sucesso!'
    redirect_to vagas_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaga
      @vaga = Vaga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vaga_params
      params.require(:vaga).permit(:titulo, :descricao, :salario)
    end
end
