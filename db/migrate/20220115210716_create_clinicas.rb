class CreateClinicas < ActiveRecord::Migration[6.1]
  def change
    create_table :clinicas do |t|
      t.string :razao_social
      t.string :nome_fantasia
      t.string :cnpj
      t.string :rua
      t.integer :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end
end
