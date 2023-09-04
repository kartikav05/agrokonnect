class Change < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :notifications, column: :task_id
    remove_foreign_key :notifications, column: :tool_id
  end
end
