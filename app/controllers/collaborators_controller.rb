class CollaboratorsController < ApplicationController
  def create
    @wiki = Wiki.find(params[:wiki_id])
    collaborator = @wiki.collaborators.new(collaborator_params)

    if collaborator.save
      flash[:notice] = "Collaborator saved successfully."
      redirect_to @wiki
    else
      flash[:alert] = "Collaborator failed to save."
      redirect_to @wiki
    end
  end

  def destroy
    @wiki = Wiki.find(params[:wiki_id])
    collaborator = @wiki.collaborators.find(params[:id])

    if collaborator.destroy
      flash[:notice] = "Collaborator was removed."
      redirect_to @wiki
    else
      flash[alert] = "Collaborator couldn't be removed successfully. Try again."
      redirect_to @wiki
    end
  end

  private
  def collaborator_params
    params.require(:collaborator).permit(:email)
  end

  def change_this_name(collaborator)
    (User.all.each { |u| u.email == collaborator.email }.any?)# && !(@wiki.collaborators.each { |c| c.email == collaborator.email }.any?)
  end
end
