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

ActiveRecord::Schema.define(version: 20170105155006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empleados", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.integer  "telefono"
    t.string   "direccion"
    t.string   "cargo"
    t.string   "turno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insumo_platos", force: :cascade do |t|
    t.integer  "cantidadusada"
    t.string   "unidadmedida"
    t.integer  "insumo_id"
    t.integer  "plato_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["insumo_id"], name: "index_insumo_platos_on_insumo_id", using: :btree
    t.index ["plato_id"], name: "index_insumo_platos_on_plato_id", using: :btree
  end

  create_table "insumos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "cantidad"
    t.string   "unidadmedida"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "mesas", force: :cascade do |t|
    t.integer  "cantidadpersonas"
    t.text     "ubicacion"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string   "tipopedido"
    t.string   "fecha"
    t.integer  "empleado_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["empleado_id"], name: "index_pedidos_on_empleado_id", using: :btree
  end

  create_table "plato_pedidos", force: :cascade do |t|
    t.integer  "plato_id"
    t.integer  "pedido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_plato_pedidos_on_pedido_id", using: :btree
    t.index ["plato_id"], name: "index_plato_pedidos_on_plato_id", using: :btree
  end

  create_table "platos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.string   "tipo"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "cantidad"
  end

  create_table "proveedor_insumos", force: :cascade do |t|
    t.integer  "precio"
    t.integer  "proveedor_id"
    t.integer  "insumo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["insumo_id"], name: "index_proveedor_insumos_on_insumo_id", using: :btree
    t.index ["proveedor_id"], name: "index_proveedor_insumos_on_proveedor_id", using: :btree
  end

  create_table "proveedors", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "direccion"
    t.integer  "telefono"
    t.string   "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "venta", force: :cascade do |t|
    t.integer  "numero"
    t.string   "tipo"
    t.integer  "subtotal"
    t.integer  "iva"
    t.integer  "propina"
    t.integer  "total"
    t.string   "fecha"
    t.integer  "pedido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_venta_on_pedido_id", using: :btree
  end

  add_foreign_key "insumo_platos", "insumos"
  add_foreign_key "insumo_platos", "platos"
  add_foreign_key "pedidos", "empleados"
  add_foreign_key "plato_pedidos", "pedidos"
  add_foreign_key "plato_pedidos", "platos"
  add_foreign_key "proveedor_insumos", "insumos"
  add_foreign_key "proveedor_insumos", "proveedors"
  add_foreign_key "venta", "pedidos"
end
