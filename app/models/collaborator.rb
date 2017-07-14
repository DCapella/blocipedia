class Collaborator < ApplicationRecord
  belongs_to :wiki

  include ActiveModel::Validations

  validates_with EmailValidator
  validates :email, uniqueness: true
end
