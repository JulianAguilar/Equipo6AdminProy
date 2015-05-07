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

ActiveRecord::Schema.define(version: 20150505194004) do

  create_table "materiales", force: true do |t|
    t.string  "Nombre"
    t.text    "Descripcion"
    t.float   "Cantidad",     limit: 24
    t.string  "Unidad"
    t.float   "Costo_Unidad", limit: 24
    t.float   "Costo_Total",  limit: 24
    t.integer "proveedor_id"
  end

  add_index "materiales", ["proveedor_id"], name: "index_materiales_on_proveedor_id", using: :btree

  create_table "proveedores", id: false, force: true do |t|
    t.string "RFC",       null: false
    t.string "Nombre"
    t.string "Direccion"
    t.string "Telefono"
  end

  add_index "proveedores", ["RFC"], name: "index_proveedores_on_RFC", unique: true, using: :btree

end
