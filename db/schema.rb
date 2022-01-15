# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_15_210729) do

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.integer "rg"
    t.string "estado_civil"
    t.string "rua"
    t.integer "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clinicas", force: :cascade do |t|
    t.string "razao_social"
    t.string "nome_fantasia"
    t.string "cnpj"
    t.string "rua"
    t.integer "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
