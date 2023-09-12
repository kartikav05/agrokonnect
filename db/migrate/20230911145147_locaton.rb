class Locaton < ActiveRecord::Migration[7.0]
  def change
    add_column :tools, :location, :string
    add_column :tasks, :location, :string
  end
end
