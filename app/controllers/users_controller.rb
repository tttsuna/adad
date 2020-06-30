class UsersController < ApplicationController
  def login_form
  end

  def login
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
      redirect_to("/goodbye")
    else
      redirect_to("/login")
    end
  end
end