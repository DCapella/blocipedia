module CollaboratorsHelper
  def self.change_this_name(collaborator)
    (User.all.each { |u| u.email == collaborator.email }.any?) && !(@wiki.collaborators.each { |c| c.email == collaborator.email }.any?)
  end
end
