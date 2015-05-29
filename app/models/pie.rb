# == Schema Information
#
# Table name: pies
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  color       :string
#  created_at  :datetime
#  updated_at  :datetime
#

class Pie < ActiveRecord::Base
end
