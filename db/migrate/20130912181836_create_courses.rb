class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.decimal :price
      t.decimal :weight
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
