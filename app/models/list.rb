class List < ApplicationRecord
  has_one :user
  has_many :tasks
  validates :title, :user_id, presence: true
  validates :title, uniqueness: { scope: :user_id }
end
