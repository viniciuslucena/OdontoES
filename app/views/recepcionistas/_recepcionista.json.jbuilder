json.extract! recepcionista, :id, :nome, :cpf, :email, :created_at, :updated_at
json.url recepcionista_url(recepcionista, format: :json)
