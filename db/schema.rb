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

ActiveRecord::Schema.define(:version => 20120225143800) do

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
  end

  add_index "datasets", ["formato_dataset_id"], :name => "index_datasets_on_formato_dataset_id"
  add_index "datasets", ["granularidade_geografica_id"], :name => "index_datasets_on_granularidade_geografica_id"
  add_index "datasets", ["granularidade_temporal_id"], :name => "index_datasets_on_granularidade_temporal_id"
  add_index "datasets", ["licenca_id"], :name => "index_datasets_on_licenca_id"
  add_index "datasets", ["siorg_id"], :name => "index_datasets_on_siorg_id"
  add_index "datasets", ["tipo_dataset_id"], :name => "index_datasets_on_tipo_dataset_id"
  add_index "datasets", ["vcge_id"], :name => "index_datasets_on_vcge_id"

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

  create_table "licencas", :force => true do |t|
    t.string   "nome"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "links", :force => true do |t|
    t.integer  "tipo_link_id"
    t.string   "titulo"
    t.string   "url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "orgao_id"
  end

  add_index "links", ["tipo_link_id"], :name => "index_links_on_tipo_link_id"

  create_table "orgaos", :force => true do |t|
    t.string   "nome"
    t.string   "url"
    t.string   "url_sobre"
    t.string   "url_competencias"
    t.string   "url_historico"
    t.string   "url_organograma"
    t.string   "url_quem_e_quem"
    t.integer  "siorg_id"
    t.integer  "licenca_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "orgaos", ["licenca_id"], :name => "index_orgaos_on_licenca_id"
  add_index "orgaos", ["siorg_id"], :name => "index_orgaos_on_siorg_id"

  create_table "siorgs", :force => true do |t|
    t.string   "nome"
    t.string   "codigo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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

  create_table "vcges", :force => true do |t|
    t.integer  "termo_pai_id"
    t.string   "termo"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "vcges", ["termo_pai_id"], :name => "index_vcges_on_termo_pai_id"

end
