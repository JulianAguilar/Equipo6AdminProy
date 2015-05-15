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

ActiveRecord::Schema.define(version: 20150515204415) do

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
    t.string   "Nombre"
    t.string   "Direccion"
    t.string   "Telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "Nombre"
    t.string   "Direccion"
    t.string   "Telefono"
    t.string   "Puesto"
    t.boolean  "Estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empleados", ["email"], name: "index_empleados_on_email", unique: true, using: :btree
  add_index "empleados", ["reset_password_token"], name: "index_empleados_on_reset_password_token", unique: true, using: :btree

  create_table "materiales", force: true do |t|
    t.string   "Nombre"
    t.string   "Descripcion"
    t.float    "Cantidad",     limit: 24
    t.string   "Unidad"
    t.float    "CostoUnidad",  limit: 24
    t.float    "CostoTotal",   limit: 24
    t.integer  "Proveedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "materiales", ["Proveedor_id"], name: "index_materiales_on_Proveedor_id", using: :btree

  create_table "mercancias", force: true do |t|
    t.string   "Descripcion"
    t.float    "Cantidad",    limit: 24
    t.boolean  "Terminado"
    t.integer  "Producto_id"
    t.integer  "Pedido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mercancias", ["Pedido_id"], name: "index_mercancias_on_Pedido_id", using: :btree
  add_index "mercancias", ["Producto_id"], name: "index_mercancias_on_Producto_id", using: :btree

  create_table "pagos", force: true do |t|
    t.date     "FechaPago"
    t.float    "Subtotal",   limit: 24
    t.float    "Total",      limit: 24
    t.integer  "Pedido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pagos", ["Pedido_id"], name: "index_pagos_on_Pedido_id", using: :btree

  create_table "pedidos", force: true do |t|
    t.date     "FechaPedido"
    t.date     "FechaEntrega"
    t.integer  "Cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "confirmado"
  end

  add_index "pedidos", ["Cliente_id"], name: "index_pedidos_on_Cliente_id", using: :btree

  create_table "productos", force: true do |t|
    t.string "Nombre"
    t.text   "Descripcion"
    t.float  "Costo",       limit: 24
  end

  create_table "proveedores", force: true do |t|
    t.string "RFC"
    t.string "Nombre"
    t.string "Direccion"
    t.string "Telefono"
  end

end
