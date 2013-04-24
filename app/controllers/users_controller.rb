class UsersController < ApplicationController
  
  def index
    
  end
  
  def new
   @user = User.new
  end
  
  def create
    @user = User.new(params[:user].merge join_date: DateTime.now)
    
    if @user.save
      flash[:notice] = "Your account has been created"
      redirect_to root_path
    else
      flash[:notice] = "There was a problem creating your account"
      render action: :new
    end
    
  end
  
end
