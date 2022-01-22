class Cliente < ApplicationRecord
    validates :nome, length: {minimum:3}
    validates :rg, confirmation: true
    validates :cpf, length: {minimum:14, maximum:14}
    validates :estado_civil, presence: true
    validates :rua, presence: true
    validates :numero, numericality: { only_integer: true }
    validates :bairro, presence: true
    validates :cidade, presence: true
    validates :estado, presence: true
    validates :cep, length: {minimum:9, maximum:9}
end
