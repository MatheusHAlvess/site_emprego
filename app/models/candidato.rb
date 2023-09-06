class Candidato < ApplicationRecord
  validates :nome, presence: true, length: { maximum: 255 }
  validates :cpf, presence: true, length: { is: 11 }, format: { with: /\A\d{11}\z/ }
  validates :data, presence: true
  validates :telefone, presence: true
  validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP, message: "E-mail inválido"}
end
