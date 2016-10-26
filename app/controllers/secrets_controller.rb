class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    if session[:name]
      render :show
    else
      redirect_to root_path
    end

  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
