class SessionsController < ApplicationController


  def new
  end

  def show
    @user = session[:user]
  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to '/sessions/show'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end

end
