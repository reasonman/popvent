class AmorphousPagesController < ApplicationController
  def index
    @users = User.all
  end
end
