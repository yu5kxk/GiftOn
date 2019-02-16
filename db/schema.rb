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

ActiveRecord::Schema.define(version: 2019_02_16_061311) do

  create_table "clips", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "large_categories", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "large_scenes", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_managers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_managers_on_reset_password_token", unique: true
  end

  create_table "post_images", force: :cascade do |t|
    t.integer "post_id"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "post"
    t.string "references"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "stance_id"
    t.integer "item_id"
    t.integer "target_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "small_scene_id"
    t.text "review"
    t.integer "age_id"
    t.integer "gender_id"
    t.string "maker_name"
    t.text "maker_address"
    t.text "url_address"
    t.integer "prefecture_id"
    t.integer "small_category_id"
    t.string "item_name"
    t.integer "item_price"
    t.integer "keeping_quality"
    t.integer "rating_feeling"
    t.integer "rating_looks"
    t.integer "rating_price"
    t.integer "rating_matching"
    t.integer "thanks_count", default: 0, null: false
  end

  create_table "small_categories", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.integer "large_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "small_scenes", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.integer "large_scene_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thanks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thankyous", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.date "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gender_id"
    t.string "image_id"
    t.integer "deleted_user"
    t.text "introduction"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
