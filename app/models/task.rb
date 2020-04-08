class Task < ApplicationRecord
  belongs_to :list
  default_scope { order(:done, :created_at) }
  validates :title, presence: true
end
