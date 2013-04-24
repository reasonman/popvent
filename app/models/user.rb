# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)      default(""), not null
#  email               :string(255)      not null
#  join_date           :datetime         not null
#  location            :string(255)
#  categories          :string(255)
#  events              :string(255)
#  crypted_password    :string(255)      not null
#  password_salt       :string(255)      not null
#  persistence_token   :string(255)      not null
#  single_access_token :string(255)      not null
#  perishable_token    :string(255)      not null
#  login_count         :integer          default(0), not null
#  failed_login_count  :integer          default(0), not null
#  last_request_at     :datetime
#  current_login_at    :datetime
#  last_login_at       :datetime
#  current_login_ip    :string(255)
#  last_login_ip       :string(255)
#  is_premium          :boolean          default(FALSE), not null
#  is_admin            :boolean          default(FALSE), not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :join_date, 
                  :location, :categories, :events, :crypted_password, :is_premium, :is_admin
  
  acts_as_authentic do |c|
    c.login_field = 'email'
#    c.validates_length_of_login_field_options = 6..254
#    c.validates_uniqueness_of_login_field_options = true
    
  end
end
