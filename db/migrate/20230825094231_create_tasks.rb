class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :taskname
      t.string :taskdesc
      t.string :startdate
      t.string :enddate
      t.string :componsation
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
