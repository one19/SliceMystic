class UpdatesController < ApplicationController

  before_action :check_if_admin

  def index
    @updates = Update.all
  end

  def create
    update = Update.create update_params
    redirect_to updates_path
  end

  def new
    @update = Update.new
  end

  def edit
    @update = Update.find params[:id]
    render :new
  end

  def show
    @update = Update.find params[:id]
  end

  def update
    update = Update.find params[:id]
    update.update update_params
    redirect_to updates_path
  end

  def destroy
    update = Update.find params[:id]
    update.destroy
    redirect_to updates_path
  end

  private
  def updates_params
    params.require(:update).permit(:title, :content, :image, :tags, :url, :website_id)
  end
  def check_if_admin
    redirect_to root_path unless @current_user.present? & @current_user.admin?
  end

end