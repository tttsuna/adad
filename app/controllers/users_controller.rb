class UsersController < ApplicationController
  def index
  end

  def login_form
  end

  def login
    @user = User.find_by(username: params[:username], password: params[:password])
    if @user
      # 変数sessionに、ログインに成功したユーザーのidを代入してください
      # session[:user_id] = @user.id
      # flash[:notice] = "ログインしました"
      # redirect_to("https://www.google.com")

    else
      render("login_form")
    end
  end
end
