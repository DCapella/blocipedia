class EmailValidator < ActiveModel::Validator
  def validate(collaborator)
    unless User.exists?('email' => collaborator[:email])
      collaborator.errors[:email] << 'Need an email that exists please.'
    end
  end
end
