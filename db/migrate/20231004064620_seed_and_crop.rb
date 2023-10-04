class SeedAndCrop < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :seed_id, :integer
    add_column :notifications, :crop_id, :integer
  end
end
