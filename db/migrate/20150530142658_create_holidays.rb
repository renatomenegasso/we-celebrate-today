class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.integer :day, null: false
      t.integer :month, null: false
      t.string :description, null: false
      t.string :slug, null: false

      t.timestamps null: false
    end
  end
end
