class CompaniesController < ApplicationController

  before_filter :init, :only => [:show, :edit, :update, :destroy]

  layout 'admin'
  respond_to :html, :js, :json

  def index
    @companies = Company.order 'created_at DESC'

    respond_with @companies
  end

  def show
    respond_with @company
  end

  def new
    @company = Company.new

    respond_with @company
  end

  def edit
    respond_with @company
  end

  def create
    @company = Company.new params[:company]

    if @company.save
      flash[:notice] = I18n.t :company_created
      respond_with @company
    else
      render :action => :new
    end
  end

  def update
    if @company.update_attributes params[:company]
      flash[:notice] = I18n.t :company_updated
      respond_with @company
    else
      render :action => :edit
    end
  end

  def destroy
    @company.destroy

    respond_with @company
  end

  def init
    @company = Company.find(params[:id])
  end

end
