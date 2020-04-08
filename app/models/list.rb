class List < ApplicationRecord
  belongs_to :user
  has_many :tasks
  validates :title, uniqueness: { scope: :user_id }, presence: true
end
