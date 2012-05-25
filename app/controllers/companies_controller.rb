class CompaniesController < ApplicationController

  layout 'admin'
  respond_to :html, :js, :json

  def index
    @companies = Company.order 'created_at DESC'

    respond_with @companies
  end

  def show
    @company = get_register(params[:id])
    respond_with @company
  end

  def new
    @company = Company.new

    respond_with @company
  end

  def edit
    @company = get_register(params[:id])
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
    @company = get_register(params[:id])

    if @company.update_attributes params[:company]
      flash[:notice] = I18n.t :company_updated
      respond_with @company
    else
      render :action => :edit
    end
  end

  def destroy
    @company = get_register(params[:id])
    @company.destroy

    respond_with @company
  end

  def get_register(id)
    Company.find(id)
  end

end
