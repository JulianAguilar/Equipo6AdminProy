# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150415211252) do

  create_table "clientes", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "Nombre"
    t.string   "Apellido_paterno"
    t.string   "Apellido_materno"
    t.string   "Direccion"
    t.string   "Telefono"
  end

  add_index "clientes", ["email"], name: "index_clientes_on_email", unique: true, using: :btree
  add_index "clientes", ["reset_password_token"], name: "index_clientes_on_reset_password_token", unique: true, using: :btree

  create_table "empleados", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "Nombre"
    t.string   "Apellido_paterno"
    t.string   "Apellido_materno"
    t.string   "Direccion"
    t.string   "Telefono"
    t.string   "Puesto"
  end

  add_index "empleados", ["email"], name: "index_empleados_on_email", unique: true, using: :btree
  add_index "empleados", ["reset_password_token"], name: "index_empleados_on_reset_password_token", unique: true, using: :btree

  create_table "materiales", force: true do |t|
    t.string  "Nombre"
    t.text    "Descripcion"
    t.integer "cantidad"
  end

  create_table "proveedores", id: false, force: true do |t|
    t.string "RFC",       null: false
    t.string "Nombre"
    t.string "Direccion"
    t.string "Telefono"
    t.string "Producto"
  end

  add_index "proveedores", ["RFC"], name: "index_proveedores_on_RFC", unique: true, using: :btree

end
