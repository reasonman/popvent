# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :text             not null
#  time        :datetime         not null
#  location    :string(255)      not null
#  owner       :integer          not null
#  recurring   :boolean          not null
#  categories  :string(255)      not null
#  gps_coords  :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  # attr_accessible :title, :body
end
