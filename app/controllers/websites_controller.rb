class WebsitesController < ApplicationController

  before_action :check_if_admin

  def index
    @websites = Website.all
  end

  def create
    website = Website.create website_params
    redirect_to websites_path
  end

  def upmaker
    require 'open-uri'
    website = @website
    upmap = website.updates.map { |x| x.url }
    update = Update.new
    doc = Nokogiri::HTML(open("#{website.url}"))
    runs = website.chunks.split('###')
    update.title = eval runs[0]
    update.url = eval runs[1]
    update.image = eval runs[2]
    update.content = eval runs [3]
    update.tags = eval runs[4]
    update.website_id = website.id
    # raise params.inspect
    if upmap.include? update.url
      update.destroy
    else
      update.save
    end
  end

  def singlemaker
    @website = Website.find params[:id]
    upmaker
    redirect_to websites_path
  end

  def allmaker
    Website.all.each do |website|
      @website = website
      upmaker
    end
    redirect_to websites_path
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
