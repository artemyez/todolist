class List < ApplicationRecord
  has_one :user
  has_many :tasks
  validates_uniqueness_of :title
end
