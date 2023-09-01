class Candidato < ApplicationRecord
  validates :nome, presence: true
  validates :cpf, presence: true
  validates :data, presence: true
  validates :telefone, presence: true
  validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP, message: "E-mail inválido"}
end
