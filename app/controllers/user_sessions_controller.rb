class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login feito com sucesso"
      redirect_to dashboard_path
    else
      flash[:notice] = "Senha ou login incorretos"
      render :new
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Log out feito com sucesso"
    redirect_to root_path
  end

  def not_authorized
  end

end
