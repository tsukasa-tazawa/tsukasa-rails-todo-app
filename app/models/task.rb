class Task < ApplicationRecord
  belongs_to:user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true

  enum status: { not_started:0, in_progress:1, compleated:2 }
end
