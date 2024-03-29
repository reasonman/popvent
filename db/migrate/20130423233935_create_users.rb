class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #app specific
      t.string    :name,                :null => false, :default => ''
#      t.string    :login,               :null => false
      t.string    :email,               :null => false
      t.datetime  :join_date,           :null => false
      t.string    :location
      t.string    :categories
      t.string    :events
      t.boolean   :is_premium,          :null => false, :default => false
      t.boolean   :is_admin,            :null => false, :default => false
      
      #auth
      t.string    :crypted_password,    :null => false
      t.string    :password_salt,       :null => false
      t.string    :persistence_token,   :null => false
      t.string    :single_access_token, :null => false
      t.string    :perishable_token,    :null => false                   

      t.integer   :login_count,         :null => false, :default => 0
      t.integer   :failed_login_count,  :null => false, :default => 0
      t.datetime  :last_request_at
      t.datetime  :current_login_at
      t.datetime  :last_login_at
      t.string    :current_login_ip
      t.string    :last_login_ip

      t.timestamps
    end
  end
end