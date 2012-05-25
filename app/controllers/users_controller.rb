class UsersController < ApplicationController

  layout 'admin'
  respond_to :html, :js, :json

  def index
    @users = User.order 'created_at DESC'

    respond_with @users
  end

  def show
    @user = get_register(params[:id])
    respond_with @user
  end

  def new
    @user = User.new

    respond_with @user
  end

  def edit
    @user = get_register(params[:id])
    respond_with @user
  end

  def create
    @user = User.new params[:user]

    if @user.save
      flash[:notice] = I18n.t :user_created
      respond_with @user
    else
      render :action => :new
    end
  end

  def update
    @user = get_register(params[:id])

    if @user.update_attributes params[:user]
      flash[:notice] = I18n.t :user_updated
      respond_with @user
    else
      render :action => :edit
    end
  end

  def destroy
    @user = get_register(params[:id])
    @user.destroy

    respond_with @user
  end

  private
    def get_register(id)
      @user = User.find(id)
    end

end
