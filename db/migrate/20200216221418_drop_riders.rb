class DropRiders < ActiveRecord::Migration
  def change
    drop_table :riders
  end
end
