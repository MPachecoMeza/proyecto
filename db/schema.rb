# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_02_163532) do

  create_table "egresados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.date "ingreso"
    t.date "egreso"
    t.string "contingente"
    t.integer "facultad_id"
    t.integer "programa_id"
    t.string "telefono"
    t.string "correo"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facultad_id"], name: "index_egresados_on_facultad_id"
    t.index ["programa_id"], name: "index_egresados_on_programa_id"
  end

  create_table "facultades", force: :cascade do |t|
    t.string "nombre"
    t.string "decano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programas", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.string "encargado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "facultad_id"
    t.index ["facultad_id"], name: "index_programas_on_facultad_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
