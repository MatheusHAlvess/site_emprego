class HomeController < ApplicationController
  def index
    @empregador = Empregador.find(1)
  end
end
