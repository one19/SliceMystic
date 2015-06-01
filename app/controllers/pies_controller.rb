class PiesController < ApplicationController
  def index
    @pies = @current_user.pies
  end

  def create
    pie = Pie.create pie_params
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
    @pie = Pie.find params[:id]
  end

  def show
    @pie = Pie.find params[:id]
    @websites = @pie.websites.all
  end

  def update
    pie = Pie.find params[:id]
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
