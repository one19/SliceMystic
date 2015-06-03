class WebsitesController < ApplicationController

  before_action :check_if_admin

  def index
    @websites = Website.all
  end

  def create
    website = Website.create website_params
    redirect_to website
  end

  def new
    @website = Website.new
  end

  def edit
    @website = Website.find params[:id]
    render :new
  end

  def show
    @website = Website.find params[:id]
  end

  def update
    website = Website.find params[:id]
    website.update website_params
    redirect_to websites_path
  end

  def destroy
    website = Website.find params[:id]
    website.destroy
    redirect_to websites_path
  end

  private
  def website_params
    params.require(:website).permit(:name, :chunks, :icons, :meta, :url)
  end
  def check_if_admin
    redirect_to root_path unless @current_user.present? & @current_user.admin?
  end

end
