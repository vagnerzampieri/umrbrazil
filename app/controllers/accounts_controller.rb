class AccountsController < ApplicationController

  layout 'admin'
  respond_to :html, :js, :json

  def index
    @accounts = Account.order 'created_at DESC'

    respond_with @accounts
  end

  def show
    @account = get_register(params[:id])
    respond_with @account
  end

  def new
    @account = Account.new

    respond_with @account
  end

  def edit
    @account = get_register(params[:id])
    respond_with @account
  end

  def create
    @account = Account.new params[:account]

    if @account.save
      flash[:notice] = I18n.t :account_created
      respond_with @account
    else
      render :action => :new
    end
  end

  def update
    @account = get_register(params[:id])

    if @account.update_attributes params[:account]
      flash[:notice] = I18n.t :account_updated
      respond_with @account
    else
      render :action => :edit
    end
  end

  def destroy
    @account = get_register(params[:id])
    @account.destroy

    respond_with @account
  end

  private
    def get_register(id)
      Account.find(id)
    end

end
