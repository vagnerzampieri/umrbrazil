class AnamnesesController < ApplicationController

  layout 'admin'
  respond_to :html, :json, :js

  def index
    @anamneses = Anamnesis.order 'created_at DESC'

    respond_with @anamneses
  end

  def show
    @anamnesis = get_register(params[:id])
    @name = @anamnesis.try(:account).try(:name)
    respond_with @anamnesis
  end

  def new
    @anamnesis = Anamnesis.new

    respond_with @anamnesis
  end

  def edit
    @anamnesis = get_register(params[:id])
    respond_with @anamnesis
  end

  def create
    @anamnesis = Anamnesis.new params[:anamnesis]

    if @anamnesis.save
      flash[:notice] = t :anamnesis_created
      respond_with @anamnesis
    else
      render :action => :new
    end
  end

  def update
    @anamnesis = get_register(params[:id])

    if @anamnesis.update_attributes params[:anamnesis]
      flash[:notice] = t :anamnesis_updated
      respond_with @anamnesis
    else
      render :action => :edit
    end
  end

  def destroy
    @anamnesis = get_register(params[:id])
    @anamnesis.destroy

    respond_with @anamnesis
  end

  private
    def get_register(id)
      Anamnesis.find(id)
    end

end
