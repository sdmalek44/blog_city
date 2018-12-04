class SessionsController < ApplicationController

  def new
    @presenter = NewSessionPresenter.new
  end

  def create
    @presenter = CreateSessionPresenter.new(authentication_params)
    if @presenter.authenticated?
      session[:user_id] = @presenter.user_id
      redirect_to blogs_path
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to(blogs_path)
  end

  private

  def authentication_params
    params.permit(:username, :password)
  end
  
end
