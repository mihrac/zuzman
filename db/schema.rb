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

ActiveRecord::Schema.define(version: 20161205113928) do

  create_table "blogs", force: :cascade do |t|
    t.string   "btitle"
    t.text     "btext"
    t.integer  "bpoint"
    t.boolean  "bapproved"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
    t.index ["cached_votes_down"], name: "index_blogs_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_blogs_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_blogs_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_blogs_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_blogs_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_blogs_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_blogs_on_cached_weighted_total"
    t.index ["category_id"], name: "index_blogs_on_category_id"
    t.index ["sub_category_id"], name: "index_blogs_on_sub_category_id"
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "cat_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "user_id"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
    t.index ["cached_votes_down"], name: "index_comments_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_comments_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_comments_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_comments_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_comments_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_comments_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_comments_on_cached_weighted_total"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "qtitle"
    t.text     "qtext"
    t.integer  "qpoint"
    t.boolean  "approved"
    t.integer  "category_id"
    t.integer  "sub_category_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "user_id"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
    t.index ["cached_votes_down"], name: "index_questions_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_questions_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_questions_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_questions_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_questions_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_questions_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_questions_on_cached_weighted_total"
    t.index ["category_id"], name: "index_questions_on_category_id"
    t.index ["sub_category_id"], name: "index_questions_on_sub_category_id"
  end

  create_table "ropes", force: :cascade do |t|
    t.integer  "ropeable_id"
    t.string   "ropeable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.index ["ropeable_type", "ropeable_id"], name: "index_ropes_on_ropeable_type_and_ropeable_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "sub_cat_name"
    t.integer  "category_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "tagname"
    t.integer  "blog_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["blog_id"], name: "index_tags_on_blog_id"
    t.index ["question_id"], name: "index_tags_on_question_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "password"
    t.string   "full_name"
    t.text     "about"
    t.integer  "role_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
