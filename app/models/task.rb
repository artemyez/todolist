class Task < ApplicationRecord
  belongs_to :list
  default_scope { order(done: :asc) }
  default_scope { order(created_at: :asc) }
end
