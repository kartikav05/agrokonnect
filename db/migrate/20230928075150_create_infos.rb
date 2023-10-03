class CreateInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :infos do |t|
      t.text :news
      t.string :location
      t.string :title

      t.timestamps
    end
  end
end
