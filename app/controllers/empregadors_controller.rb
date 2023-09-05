class EmpregadorsController < ApplicationController
  before_action :set_empregador, only: %i[ show edit update destroy ]

  # GET /empregadors or /empregadors.json
  def index
    @empregadors = Empregador.all
  end

  # GET /empregadors/1 or /empregadors/1.json
  def show
    @empregador = Empregador.find(params[:id])
  end

  # GET /empregadors/new
  def new
    @empregador = Empregador.new
  end

  def new_vaga
    @vaga = Vaga.new
  end

  # GET /empregadors/1/edit
  def edit
    @empregador = Empregador.find(params[:id])
  end

  def create_vaga
    @vaga = Vaga.new(vaga_params)
    @vaga.empregador = current_empregador

    if @vaga.save
      redirect_to @vaga, notice: 'Vaga criada com sucesso'
    else
      render 'new_vaga'
    end
  end

  # POST /empregadors or /empregadors.json
  def create
    @empregador = Empregador.new(empregador_params)

      if @empregador.save
        flash[:succes] = 'Empregador criado com sucesso'
        redirect_to empregadors_path
      else
        render 'new'
      end
    end
end

  # PATCH/PUT /empregadors/1 or /empregadors/1.json
  def update
    @empregador = Empregador.find(params[:id])
    if @empregador.update(empregador_params)
      flash[:success] = 'Empregador atualizado com sucesso!'
      redirect_to @empregador
    else
      render 'edit'
    end
  end

  # DELETE /empregadors/1 or /empregadors/1.json
  def destroy
    @empregador = Empregador.find(params[:id])
    @empregador.destroy
    flash[:success] = 'Empregador excluído com sucesso!'
    redirect_to empregadores_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empregador
      @empregador = Empregador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empregador_params
      params.require(:empregador).permit(:nome, :nomeEmpresa, :email, :endereco, :telefone, :cnpj)
    end

    def vaga_params
      params.require(:vaga).permit(:titulo, :descricao, :salario)
    end

