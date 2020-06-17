class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:name],password: params[:password])
    if @user
      flash[:notice] = 'ログインに成功しました'
      redirect_to('/')
    else
      flash[:notice] = 'ログインに失敗しました'
      redirect_to('/')
    end
  end

  def destroy; end
end
