class Task < ApplicationRecord
  belongs_to:user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true

  enum status: {"未着手":0, "進行中":1, "完了":2}
end
