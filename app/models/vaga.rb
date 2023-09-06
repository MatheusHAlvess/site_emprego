class Vaga < ApplicationRecord
  belongs_to :empregador

  validates :titulo, presence: true, length: { maximum: 255 }
  validates :descricao, presence: true
  validates :salario, presence: true, format: { with: /\A\d+(,\d{1,2})?\z/, message: "deve conter apenas números" }
end
