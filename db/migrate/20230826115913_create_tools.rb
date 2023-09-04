class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.string :toolname
      t.string :fromdate
      t.string :todate
      t.integer :no_tools
      t.integer :cost
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
