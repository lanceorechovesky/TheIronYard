class HomeController < ApplicationController
  def index
    @user_list = User.where.not(id: current_user)
  end
end
