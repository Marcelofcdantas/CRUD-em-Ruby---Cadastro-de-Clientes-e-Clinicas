json.extract! cliente, :id, :nome, :cpf, :rg, :estado_civil, :rua, :numero, :complemento, :bairro, :cidade, :estado, :cep, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
