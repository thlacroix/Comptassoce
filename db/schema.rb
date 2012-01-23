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

ActiveRecord::Schema.define(:version => 20120120143511) do

  create_table "categorie_analytiques", :force => true do |t|
    t.string   "nom"
    t.integer  "annee"
    t.integer  "facture_id"
    t.integer  "entree_journal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorie_analytiques", ["entree_journal_id"], :name => "index_categorie_analytiques_on_entree_journal_id"
  add_index "categorie_analytiques", ["facture_id"], :name => "index_categorie_analytiques_on_facture_id"

  create_table "categorie_comptables", :force => true do |t|
    t.integer  "entree_journal_id"
    t.integer  "tier_id"
    t.integer  "facture_id"
    t.integer  "compte_bancaire_id"
    t.integer  "numero"
    t.integer  "categorie_comptable_id"
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categorie_comptables", ["categorie_comptable_id"], :name => "index_categorie_comptables_on_categorie_comptable_id"
  add_index "categorie_comptables", ["compte_bancaire_id"], :name => "index_categorie_comptables_on_compte_bancaire_id"
  add_index "categorie_comptables", ["entree_journal_id"], :name => "index_categorie_comptables_on_entree_journal_id"
  add_index "categorie_comptables", ["facture_id"], :name => "index_categorie_comptables_on_facture_id"
  add_index "categorie_comptables", ["tier_id"], :name => "index_categorie_comptables_on_tier_id"

  create_table "compte_bancaires", :force => true do |t|
    t.string   "banque"
    t.string   "nom"
    t.string   "iban"
    t.string   "bic"
    t.string   "proprietaire"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entree_journals", :force => true do |t|
    t.string   "libelle"
    t.date     "date"
    t.boolean  "valide"
    t.integer  "entree_journal_id"
    t.float    "debit"
    t.float    "credit"
    t.string   "moyen"
    t.integer  "journal_id"
    t.integer  "facture_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  add_index "entree_journals", ["entree_journal_id"], :name => "index_entree_journals_on_entree_journal_id"
  add_index "entree_journals", ["facture_id"], :name => "index_entree_journals_on_facture_id"
  add_index "entree_journals", ["journal_id"], :name => "index_entree_journals_on_journal_id"

  create_table "factures", :force => true do |t|
    t.float    "montant_ht"
    t.float    "montant_ttc"
    t.float    "tva"
    t.date     "date"
    t.string   "reference"
    t.string   "libelle"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.integer  "tier_id"
  end

  create_table "journals", :force => true do |t|
    t.string   "nom"
    t.string   "type"
    t.integer  "compte_bancaire_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "journals", ["compte_bancaire_id"], :name => "index_journals_on_compte_bancaire_id"

  create_table "tiers", :force => true do |t|
    t.string   "nom"
    t.string   "mail"
    t.string   "adresse"
    t.string   "ville"
    t.integer  "cp"
    t.integer  "tel"
    t.text     "description"
    t.string   "iban"
    t.string   "bic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

end
