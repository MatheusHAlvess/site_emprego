class Candidatura < ApplicationRecord
  belongs_to :candidato
  belongs_to :empregador
  belongs_to :vaga

  validates :status, presence: true
  validates: mensagem, presence: true
end
