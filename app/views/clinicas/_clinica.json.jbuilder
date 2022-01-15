json.extract! clinica, :id, :razao_social, :nome_fantasia, :cnpj, :rua, :numero, :complemento, :bairro, :cidade, :estado, :cep, :created_at, :updated_at
json.url clinica_url(clinica, format: :json)
