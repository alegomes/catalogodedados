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

ActiveRecord::Schema.define(:version => 20120303135732) do

  create_table "carta_servicos_cidadaos", :force => true do |t|
    t.integer  "artigo"
    t.integer  "paragrafo"
    t.integer  "inciso"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "datasets", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "url"
    t.string   "guarda"
    t.string   "url_documentacao"
    t.string   "cobertura_temporal"
    t.string   "cobertura_geografica"
    t.string   "origem"
    t.integer  "orgao_id"
    t.integer  "siorg_id"
    t.integer  "vcge_id"
    t.integer  "granularidade_temporal_id"
    t.integer  "granularidade_geografica_id"
    t.integer  "formato_dataset_id"
    t.integer  "tipo_dataset_id"
    t.integer  "licenca_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.date     "data_atualizacao"
    t.string   "comentario"
    t.boolean  "nao_ha_data"
  end

  add_index "datasets", ["formato_dataset_id"], :name => "index_datasets_on_formato_dataset_id"
  add_index "datasets", ["granularidade_geografica_id"], :name => "index_datasets_on_granularidade_geografica_id"
  add_index "datasets", ["granularidade_temporal_id"], :name => "index_datasets_on_granularidade_temporal_id"
  add_index "datasets", ["licenca_id"], :name => "index_datasets_on_licenca_id"
  add_index "datasets", ["siorg_id"], :name => "index_datasets_on_siorg_id"
  add_index "datasets", ["tipo_dataset_id"], :name => "index_datasets_on_tipo_dataset_id"
  add_index "datasets", ["vcge_id"], :name => "index_datasets_on_vcge_id"

  create_table "datasets_vcges", :id => false, :force => true do |t|
    t.integer "dataset_id"
    t.integer "vcge_id"
  end

  add_index "datasets_vcges", ["dataset_id"], :name => "index_datasets_vcges_on_dataset_id"
  add_index "datasets_vcges", ["vcge_id"], :name => "index_datasets_vcges_on_vcge_id"

  create_table "formato_datasets", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "granularidade_geograficas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "granularidade_temporals", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inciso_carta_servicos_cidadaos", :force => true do |t|
    t.integer  "artigo"
    t.integer  "paragrafo"
    t.string   "inciso"
    t.string   "texto"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "licencas", :force => true do |t|
    t.string   "nome"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "links", :force => true do |t|
    t.string   "titulo"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "orgao_id"
  end

  create_table "obediencia", :force => true do |t|
    t.integer  "orgao_id"
    t.integer  "inciso_carta_servicos_cidadao_id"
    t.integer  "contempla_cd"
    t.text     "comentarios"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "obediencia", ["inciso_carta_servicos_cidadao_id"], :name => "index_obediencia_on_inciso_carta_servicos_cidadao_id"
  add_index "obediencia", ["orgao_id"], :name => "index_obediencia_on_orgao_id"

  create_table "orgaos", :force => true do |t|
    t.string   "nome"
    t.string   "url"
    t.integer  "siorg_id"
    t.integer  "licenca_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "orgaos", ["licenca_id"], :name => "index_orgaos_on_licenca_id"
  add_index "orgaos", ["siorg_id"], :name => "index_orgaos_on_siorg_id"

  create_table "siorgs", :force => true do |t|
    t.string   "nome"
    t.string   "codigo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "codigo_pai"
  end

  create_table "tipo_datasets", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_links", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vcges", :force => true do |t|
    t.string   "uri"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
