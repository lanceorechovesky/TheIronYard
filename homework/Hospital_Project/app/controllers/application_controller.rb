class ApplicationController < ActionController::Base
  # Next i need to add error messagaes to the validation!
  protect_from_forgery with: :exception

  def user_email
    @user_email = User.find params[:email]
  end
end
