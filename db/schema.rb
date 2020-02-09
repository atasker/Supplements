# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_09_181520) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.text "lead"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category_id"
    t.string "slug"
    t.integer "author_id"
    t.integer "reviewer_id"
    t.index ["author_id"], name: "index_articles_on_author_id"
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["reviewer_id"], name: "index_articles_on_reviewer_id"
    t.index ["slug"], name: "index_articles_on_slug", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "bio"
  end

  create_table "categories", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_categories_on_slug", unique: true
  end

  create_table "reviewers", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "image"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supplements", force: :cascade do |t|
    t.string "name"
    t.text "aka"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category_id"
    t.string "slug"
    t.integer "author_id"
    t.integer "reviewer_id"
    t.text "description"
    t.text "function"
    t.text "instructions"
    t.text "benefits"
    t.text "dangers"
    t.text "bullets"
    t.text "faq"
    t.text "sources"
    t.boolean "safe", default: true
    t.index ["author_id"], name: "index_supplements_on_author_id"
    t.index ["category_id"], name: "index_supplements_on_category_id"
    t.index ["reviewer_id"], name: "index_supplements_on_reviewer_id"
    t.index ["slug"], name: "index_supplements_on_slug", unique: true
  end

  add_foreign_key "articles", "authors"
  add_foreign_key "articles", "categories"
  add_foreign_key "articles", "reviewers"
  add_foreign_key "supplements", "authors"
  add_foreign_key "supplements", "categories"
  add_foreign_key "supplements", "reviewers"
end
