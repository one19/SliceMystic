class PagesController < ApplicationController
  
  def home
    @all_ups = []
    if @current_user.present?
      @current_user.websites.uniq.each do |site|
        @all_ups.concat(site.updates.all.uniq)
      end
    else
      Website.all.uniq.each do |site|
        @all_ups.concat(site.updates.all.uniq)
      end
    end
    @all_ups = @all_ups.sort_by { |a| (a.updated_at) }
  end

end
