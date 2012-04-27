class UsersController < ApplicationController

  before_filter :init, :only => [:show, :edit, :update, :destroy]

  layout 'admin'
  respond_to :html, :js, :json

  def index
    @users = User.order 'created_at DESC'

    respond_with @users
  end

  def show
    respond_with @user
  end

  def new
    @user = User.new

    respond_with @user
  end

  def edit
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
    if @user.update_attributes params[:user]
      flash[:notice] = I18n.t :user_updated
      respond_with @user
    else
      render :action => :edit
    end
  end

  def destroy
    @user.destroy

    respond_with @user
  end

  def init
    @user = User.find(params[:id])
  end

end
