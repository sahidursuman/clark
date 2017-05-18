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

ActiveRecord::Schema.define(version: 20170322184928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doc_data", force: :cascade do |t|
    t.text     "data"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "tag_id"
    t.integer  "document_id"
    t.binary   "image"
    t.index ["document_id"], name: "index_doc_data_on_document_id", using: :btree
    t.index ["tag_id"], name: "index_doc_data_on_tag_id", using: :btree
  end

  create_table "doc_types", force: :cascade do |t|
    t.string   "title"
    t.string   "shortname"
    t.string   "template"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "template_id"
    t.index ["template_id"], name: "index_doc_types_on_template_id", using: :btree
  end

  create_table "doc_types_projects", id: false, force: :cascade do |t|
    t.integer "project_id",  null: false
    t.integer "doc_type_id", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.integer  "doc_type_id"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "revision"
    t.string   "filename"
    t.index ["doc_type_id"], name: "index_documents_on_doc_type_id", using: :btree
    t.index ["project_id"], name: "index_documents_on_project_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "number"
    t.string   "customer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "doc_type_id"
    t.boolean  "is_image"
    t.index ["doc_type_id"], name: "index_tags_on_doc_type_id", using: :btree
  end

  create_table "templates", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_foreign_key "doc_data", "documents"
  add_foreign_key "doc_data", "tags"
  add_foreign_key "doc_types", "templates"
  add_foreign_key "documents", "doc_types"
  add_foreign_key "documents", "projects"
  add_foreign_key "tags", "doc_types"
end
