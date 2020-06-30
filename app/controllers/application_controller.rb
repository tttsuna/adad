class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session


  def hello
    render html:"hello world"
  end

  def good_bye
    render html:"good bye!"
  end

end
