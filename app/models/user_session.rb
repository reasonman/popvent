class UserSession < Authlogic::Session::Base
  # attr_accessible :title, :body
  
  def new
    @user_session = UserSession.new
  end
  
  def create
    
  end
  
  def destroy
    
  end
end
