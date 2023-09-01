json.extract! candidatura, :id, :candidato_id, :empregador_id, :vaga_id, :status, :msg, :created_at, :updated_at
json.url candidatura_url(candidatura, format: :json)
