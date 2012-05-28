class HistoriesController < ApplicationController

  layout 'admin'
  respond_to :html, :json, :js

  def index
    @histories = History.order 'created_at DESC'

    respond_with @histories
  end

  def show
    @history = get_register(params[:id])
    respond_with @history
  end

  def new
    @history = History.new

    respond_with @history
  end

  def edit
    @history = get_register(params[:id])
    respond_with @history
  end

  def create
    @history = History.new params[:history]

    if @history.save
      flash[:notice] = t :history_created
      respond_with @history
    else
      render :action => :new
    end
  end

  def update
    @history = get_register(params[:id])

    if @history.update_attributes params[:history]
      flash[:notice] = t :history_updated
      respond_with @history
    else
      render :action => :edit
    end
  end

  def destroy
    @history = get_register(params[:id])
    @history.destroy

    respond_with @history
  end

  private
    def get_register(id)
      History.find(id)
    end

end
