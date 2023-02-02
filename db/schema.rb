# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_01_075306) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "credits", force: :cascade do |t|
    t.decimal "amount"
    t.decimal "interest"
    t.string "status"
    t.datetime "pay_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id", null: false
    t.bigint "member_id", null: false
    t.index ["group_id"], name: "index_credits_on_group_id"
    t.index ["member_id"], name: "index_credits_on_member_id"
  end

  create_table "distributions", force: :cascade do |t|
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id", null: false
    t.bigint "member_id", null: false
    t.index ["group_id"], name: "index_distributions_on_group_id"
    t.index ["member_id"], name: "index_distributions_on_member_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_members", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "member_id", null: false
    t.bigint "group_id", null: false
    t.index ["group_id"], name: "index_groups_members_on_group_id"
    t.index ["member_id"], name: "index_groups_members_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "first_name"
    t.text "last_name"
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "credit_id", null: false
    t.bigint "member_id", null: false
    t.index ["credit_id"], name: "index_payments_on_credit_id"
    t.index ["member_id"], name: "index_payments_on_member_id"
  end

  create_table "savings", force: :cascade do |t|
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "member_id", null: false
    t.bigint "group_id", null: false
    t.index ["group_id"], name: "index_savings_on_group_id"
    t.index ["member_id"], name: "index_savings_on_member_id"
  end

  add_foreign_key "credits", "groups"
  add_foreign_key "credits", "members"
  add_foreign_key "distributions", "groups"
  add_foreign_key "distributions", "members"
  add_foreign_key "groups_members", "groups"
  add_foreign_key "groups_members", "members"
  add_foreign_key "payments", "credits"
  add_foreign_key "payments", "members"
  add_foreign_key "savings", "groups"
  add_foreign_key "savings", "members"
end
