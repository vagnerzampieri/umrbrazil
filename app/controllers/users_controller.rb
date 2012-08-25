class UsersController < ApplicationController

  layout 'admin'
  respond_to :html, :json

  def index
    @users = User.paginate(page: params[:page], per_page: 10).order('created_at DESC')

    respond_with @users
  end

  def show
    @user = get_register(params[:id])
    respond_with @user
  end

  def new
    @user = User.new
    @type_users = TypeUser.available

    respond_with @user
  end

  def edit
    @user = get_register(params[:id])
    @type_users = TypeUser.available

    respond_with @user
  end

  def create
    @user = User.new params[:user]

    flash[:notice] = I18n.t :user_created if @user.save
    respond_with @user
  end

  def update
    @user = get_register(params[:id])

    flash[:notice] = I18n.t :user_updated if @user.update_attributes params[:user]
    respond_with @user
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
