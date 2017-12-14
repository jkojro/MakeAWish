

ActiveRecord::Schema.define(version: 20171213194841) do

  create_table "myanswers", force: :cascade do |t|
    t.string   "reply"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "querry_id"
    t.index ["querry_id"], name: "index_myanswers_on_querry_id"
    t.index ["user_id"], name: "index_myanswers_on_user_id"
  end

  create_table "querries", force: :cascade do |t|
    t.text     "question"
    t.string   "answer"
    t.text     "tip"
    t.integer  "wish_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.datetime "completed_at"
    t.boolean  "isdone"
    t.index ["wish_id"], name: "index_querries_on_wish_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "fbname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishes", force: :cascade do |t|
    t.string   "name"
    t.string   "mywish"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "reciever"
    t.datetime "completed_at"
    t.boolean  "isdone"
    t.index ["user_id"], name: "index_wishes_on_user_id"
  end

end
