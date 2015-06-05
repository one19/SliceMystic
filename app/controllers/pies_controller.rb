class PiesController < ApplicationController

  def index
    @pies = @current_user.pies
  end

  def admin
    @pies = Pie.all
    @users = User.all
  end

  def create
    wids = params["pie"]["website_ids"].uniq!.reject! { |c| c.empty? }
    # raise params.inspect
    pie = Pie.create pie_params
    wids.each {|w| Pie.last.websites << (Website.find w) }
    @current_user.pies << pie
    redirect_to pie
  end

  def new
    @websites = Website.all
    @genres = []

    @websites.each do |w|
      @genres.concat(w.meta.split(', '))
    end
    @genres.uniq!

    @pie = Pie.new
  end

  def edit
    @websites = Website.all
    @genres = []

    @websites.each do |w|
      @genres.concat(w.meta.split(', '))
    end
    @genres.uniq!
    @pie = Pie.find params[:id]
  end

  def show
    @all_ups = []
    @pie = Pie.find params[:id]
    @pie.websites.uniq.each do |site|
      @all_ups.concat(site.updates.all.uniq)
    end
    @all_ups.reverse!
    @websites = @pie.websites.all
  end

  def update
    pie = Pie.find params[:id]
    pie.websites = []

    wids = params["pie"]["website_ids"].uniq!.reject! { |c| c.empty? }
    wids.each { |w| Pie.find(pie.id).websites << (Website.find w) }

    pie.update pie_params
    redirect_to pie
  end

  def destroy
    pie = Pie.find params[:id]
    pie.destroy
    redirect_to pies_path
  end

  private
  def pie_params
    params.require(:pie).permit(:name, :description, :color)
  end
end
