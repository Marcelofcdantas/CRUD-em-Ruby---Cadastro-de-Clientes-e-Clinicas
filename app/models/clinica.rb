class Clinica < ApplicationRecord
    validates :nome_fantasia, length: {minimum:3}
    validates :razao_social, confirmation: true
    validates :cnpj, length: {minimum:18, maximum:18}
    validates :rua, presence: true
    validates :numero, numericality: { only_integer: true }
    validates :bairro, presence: true
    validates :cidade, presence: true
    validates :estado, presence: true
    validates :cep, length: {minimum:9, maximum:9}
end
