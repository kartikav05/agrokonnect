class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :task,optional: true
  belongs_to :tool,optional: true
end
