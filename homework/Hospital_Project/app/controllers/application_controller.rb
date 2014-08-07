class ApplicationController < ActionController::Base
  # Next i need to add error messagaes to the validation!
  protect_from_forgery with: :exception
end
