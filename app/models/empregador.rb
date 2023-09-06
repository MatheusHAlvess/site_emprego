class Empregador < ApplicationRecord
  has_many :vagas

  validates :nome, presence: true, length: { maximum: 255 }
  validates :nomeEmpresa, presence: true, length: { maximum: 255 }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true
  validates :endereco, presence: true, length: { maximum: 255 }
  validates :telefone, presence: true, format: { with: /\A\d+\z/, message: "deve conter apenas números" }
  validates :cnpj, presence: true, uniqueness: true, length: { is: 14 }, format: { with: /\A\d{14}\z/ }

end
