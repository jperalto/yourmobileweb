# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_01_155757) do

  create_table "marcas", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mobiles", force: :cascade do |t|
    t.integer "marca_id", null: false
    t.integer "modelo_id", null: false
    t.float "precio"
    t.integer "stock"
    t.string "imagen"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["marca_id"], name: "index_mobiles_on_marca_id"
    t.index ["modelo_id"], name: "index_mobiles_on_modelo_id"
  end

  create_table "modelos", force: :cascade do |t|
    t.string "descripcion"
    t.integer "marca_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["marca_id"], name: "index_modelos_on_marca_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "nombre"
    t.float "precio"
    t.integer "sms"
    t.integer "minutos"
    t.float "datosGB"
    t.boolean "redes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "mobiles", "marcas"
  add_foreign_key "mobiles", "modelos"
  add_foreign_key "modelos", "marcas"
end
