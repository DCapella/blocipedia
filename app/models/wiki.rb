class Wiki < ApplicationRecord
  belongs_to :user

  default_scope { order('created_at DESC') }

  validates :user, presence: true
end
