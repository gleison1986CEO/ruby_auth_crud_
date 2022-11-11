class TabelasController < ApplicationController
  before_action :set_tabela, only: %i[ show edit update destroy ]


  def index
    @tabelas = Tabela.all
  end

 
  def show
  end

  def new
    @tabela = Tabela.new
  end


  def edit
  end


  def create
    @tabela = Tabela.new(tabela_params)

    respond_to do |format|
      if @tabela.save
        format.html { redirect_to tabela_url(@tabela), notice: "usuário criado com sucesso" }
        format.json { render :show, status: :created, location: @tabela }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tabela.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @tabela.update(tabela_params)
        format.html { redirect_to tabela_url(@tabela), notice: "usuarios atualizado com sucesso" }
        format.json { render :show, status: :ok, location: @tabela }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tabela.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tabela.destroy

    respond_to do |format|
      format.html { redirect_to tabelas_url, notice: "usuario deletado com sucesso" }
      format.json { head :no_content }
    end
  end

  private
 
    def set_tabela
      @tabela = Tabela.find(params[:id])
    end


    def tabela_params
      params.require(:tabela).permit(:nome, :email, :whatsapp)
    end
end
