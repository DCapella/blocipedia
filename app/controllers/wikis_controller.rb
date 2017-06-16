class WikisController < ApplicationController
  before_action :authorize_standard, except: [:index, :show, :downgrade]
  before_action :authorize_premium, except: [:index, :show, :edit, :new, :create, :edit, :update, :downgrade]

  def index
    @wikis = Wiki.all
  end

  def show
    @wiki = Wiki.find(params[:id])
  end

  def new
    @wiki = Wiki.new
  end

  def create
    @wiki = Wiki.new
    wiki_params
    @wiki.user = current_user

    if @wiki.save
      flash[:notice] = "Wiki was saved."
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error saving the wiki. Please try again."
      render :new
    end
  end

  def edit
    @wiki = Wiki.find(params[:id])
  end

  def update
    @wiki = Wiki.find(params[:id])
    wiki_params
    #authorize @wiki

    if @wiki.save
      flash[:notice] = "Wiki was updated."
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error saving the wiki. Please try again."
      render :edit
    end
  end

  def destroy
    @wiki = Wiki.find(params[:id])

    if @wiki.destroy
      flash[:notice] = "\"#{@wiki.title}\" was deleted successfully."
      redirect_to wikis_path
    else
      flash.now[:alert] = "There was an error deleting the post."
      render :show
    end
  end

  def downgrade
    flash[:notice] = "You are now a standard user, #{current_user.email}, come back!"
    current_user.standard!
    redirect_to wikis_url
  end

  private
  def wiki_params
    if @wiki.nil?
      @wiki.title = params[:wiki][:title]
      @wiki.body = params[:wiki][:body]
    end
  end

  def authorize_standard
    if current_user.standard?
      flash[:alert] = "You must be an admin or premium user to do that."
      redirect_to wikis_path
    end
  end

  def authorize_premium
    wiki = Wiki.find(params[:id])

    unless current_user == wiki.user || current_user.admin?
      flash[:alert] = "You must be an admin or the author to do that."
      redirect_to [wiki]
    end
  end
end
