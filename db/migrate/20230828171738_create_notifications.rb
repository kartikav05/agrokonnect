class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.string :status
      t.references :task, foreign_key: true
      t.references :tool,  foreign_key: true
      t.integer :requester_id

      t.timestamps
    end
  end
end
