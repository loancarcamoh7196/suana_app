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

ActiveRecord::Schema.define(version: 2019_03_09_160259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "number_street"
    t.integer "building_type"
    t.string "zip_code"
    t.bigint "township_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["township_id"], name: "index_addresses_on_township_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banners", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "actived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billings", force: :cascade do |t|
    t.string "code"
    t.string "payment_method"
    t.decimal "amount", precision: 5, scale: 2
    t.string "currency"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_billings_on_user_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clusters", force: :cascade do |t|
    t.string "references"
    t.bigint "product_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_clusters_on_category_id"
    t.index ["product_id"], name: "index_clusters_on_product_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "description"
    t.boolean "banned", default: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "detail_id"
    t.index ["detail_id"], name: "index_comments_on_detail_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "delivery_identifider"
    t.date "delivery_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "billing_id"
    t.index ["billing_id"], name: "index_deliveries_on_billing_id"
  end

  create_table "details", force: :cascade do |t|
    t.string "unique_identifider"
    t.bigint "brand_id"
    t.integer "quantity"
    t.boolean "available"
    t.boolean "is_reserved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.float "price"
    t.string "chapter"
    t.index ["brand_id"], name: "index_details_on_brand_id"
    t.index ["product_id"], name: "index_details_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "detail_id"
    t.boolean "paided", default: false
    t.integer "quantity", default: 0
    t.float "price", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "billing_id"
    t.index ["billing_id"], name: "index_orders_on_billing_id"
    t.index ["detail_id"], name: "index_orders_on_detail_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "author_id"
    t.integer "point_quantity"
    t.boolean "is_gift"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_products_on_author_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.string "ordinal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suggestions", force: :cascade do |t|
    t.string "subject"
    t.text "content"
    t.text "observation"
    t.integer "type_s"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "revised", default: false
    t.index ["user_id"], name: "index_suggestions_on_user_id"
  end

  create_table "townships", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_townships_on_region_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "rut"
    t.string "document_number"
    t.integer "role", default: 0
    t.string "phone_number"
    t.integer "phone_type", default: 0
    t.integer "points", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishlists", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["detail_id"], name: "index_wishlists_on_detail_id"
    t.index ["user_id"], name: "index_wishlists_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "townships"
  add_foreign_key "addresses", "users"
  add_foreign_key "billings", "users"
  add_foreign_key "clusters", "categories"
  add_foreign_key "clusters", "products"
  add_foreign_key "comments", "details"
  add_foreign_key "comments", "users"
  add_foreign_key "deliveries", "billings"
  add_foreign_key "details", "brands"
  add_foreign_key "details", "products"
  add_foreign_key "orders", "billings"
  add_foreign_key "orders", "details"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "authors"
  add_foreign_key "suggestions", "users"
  add_foreign_key "townships", "regions"
  add_foreign_key "wishlists", "details"
  add_foreign_key "wishlists", "users"
end
