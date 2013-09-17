class CreateDatabase < ActiveRecord::Migration
  def change
    create_table :categories, force: true do |t|
      t.string   :name
      t.timestamps
    end

    create_table :courses, force: true do |t|
      t.string   :name
      t.decimal  :price
      t.decimal  :weight
      t.text     :description
      t.string   :image_url
      t.timestamps
    end

    create_table :meals, force: true do |t|
      t.string   :name
      t.belongs_to :category
      t.belongs_to :course
      t.timestamps
    end

    create_table :meal_side_types, force: true do |t|
      t.belongs_to :meal
      t.belongs_to :side_type
      t.timestamps
    end

    create_table :orders, force: true do |t|
      t.string   :status
      t.belongs_to :user
      t.belongs_to :meal
      t.timestamps
    end

    create_table :sessions, force: true do |t|
      t.string   :session_id, null: false
      t.text     :data
      t.timestamps
    end

    add_index :sessions, [:session_id], name: "index_sessions_on_session_id", using: :btree
    add_index :sessions, [:updated_at], name: "index_sessions_on_updated_at", using: :btree

    create_table :side_types, force: true do |t|
      t.string   :name
      t.timestamps
    end

    create_table :sides, force: true do |t|
      t.string   :name
      t.belongs_to :side_type
      t.timestamps
    end

    create_table :users, force: true do |t|
      t.string   :email,                  default: "", null: false
      t.string   :encrypted_password,     default: "", null: false
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer  :sign_in_count,          default: 0,  null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.timestamps
      t.string   :provider
      t.string   :uid
      t.string   :name
    end

    add_index :users, [:email], name: "index_users_on_email", unique: true, using: :btree
    add_index :users, [:reset_password_token], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end
end