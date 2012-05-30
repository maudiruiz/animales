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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120524202844) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "formularios", :force => true do |t|
    t.integer  "mascota_id"
    t.integer  "usuario_id"
    t.boolean  "revisado"
    t.boolean  "aceptado"
    t.string   "ocupacion"
    t.string   "dependencia"
    t.string   "autorizacion"
    t.text     "direccion"
    t.string   "telefono"
    t.string   "celular"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "historiaAnimal"
    t.text     "espacioActividades"
  end

  create_table "mascota", :force => true do |t|
    t.string   "nombre"
    t.string   "especie"
    t.string   "color"
    t.string   "pelo"
    t.string   "tamano"
    t.string   "caracter"
    t.text     "observaciones"
    t.string   "foto"
    t.string   "protectora"
    t.string   "status"
    t.boolean  "destacado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "protectoras", :force => true do |t|
    t.string   "nombre"
    t.string   "responsable"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "telefono"
    t.string   "logo"
    t.string   "zona"
    t.boolean  "autorizada"
    t.string   "extra"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "protectoras", ["email"], :name => "index_protectoras_on_email", :unique => true
  add_index "protectoras", ["reset_password_token"], :name => "index_protectoras_on_reset_password_token", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "foto"
    t.string   "url"
    t.string   "gender"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
