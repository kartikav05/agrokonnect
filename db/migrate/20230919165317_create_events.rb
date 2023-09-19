class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :start
      t.date :end
      t.references :user, null: false, foreign_key: true
      t.string :req_mail

      t.timestamps
    end
  end
end
