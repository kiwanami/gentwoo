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

ActiveRecord::Schema.define(:version => 20111019054403) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emerges", :force => true do |t|
    t.datetime "buildtime"
    t.integer  "duration"
    t.integer  "package_id"
    t.integer  "user_id"
    t.text     "log"
    t.text     "errorlog"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "tobe_tweet", :default => false
  end

  add_index "emerges", ["buildtime", "package_id", "user_id"], :name => "index_emerges_on_buildtime_and_package_id_and_user_id"
  add_index "emerges", ["buildtime"], :name => "index_emerges_on_buildtime"
  add_index "emerges", ["package_id"], :name => "index_emerges_on_package_id"
  add_index "emerges", ["user_id"], :name => "index_emerges_on_user_id"

  create_table "packages", :force => true do |t|
    t.string   "category"
    t.string   "name"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "twitter_id"
    t.string   "login"
    t.binary   "crypted_password"
    t.string   "salt"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.string   "profile_image_url"
    t.string   "url"
    t.boolean  "protected"
    t.string   "profile_background_color"
    t.string   "profile_sidebar_fill_color"
    t.string   "profile_link_color"
    t.string   "profile_sidebar_border_color"
    t.string   "profile_text_color"
    t.string   "profile_background_image_url"
    t.boolean  "profile_background_tile"
    t.integer  "friends_count"
    t.integer  "statuses_count"
    t.integer  "followers_count"
    t.integer  "favourites_count"
    t.integer  "utc_offset"
    t.string   "time_zone"
    t.string   "access_token"
    t.string   "access_secret"
    t.string   "sitekey"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "tweet_emerged"
    t.boolean  "tweet_comment"
    t.boolean  "delay_emerge_tweet",           :default => false
    t.integer  "tweet_interval",               :default => 10
    t.datetime "last_tweet"
  end

end
