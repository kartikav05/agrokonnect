class CreateSeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :seeds do |t|
      t.string :name
      t.integer :cost
      t.string :location
      t.integer :weight
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
