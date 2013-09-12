class CreateSides < ActiveRecord::Migration
  def change
    create_table :sides do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
