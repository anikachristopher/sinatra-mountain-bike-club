class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :name
      t.string :gender
      t.date :birthdate
      t.string :category
      t.integer :user_id
    end
  end
end
