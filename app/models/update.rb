# == Schema Information
#
# Table name: updates
#
#  id         :integer          not null, primary key
#  title      :string
#  url        :text
#  content    :text
#  image      :text
#  tags       :text
#  website_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Update < ActiveRecord::Base
end
