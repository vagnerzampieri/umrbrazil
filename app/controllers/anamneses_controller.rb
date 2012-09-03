class AnamnesesController < ApplicationController
  #load_and_authorize_resource
  layout 'admin'
  respond_to :html, :json, :js

  def show
    begin
      @anamnese = Anamnese.find(params[:id])
      @name = @anamnese.try(:account).try(:name)
      respond_with @anamnese
    rescue
      redirect_to(dashboard_path)
    end
  end

  def edit
    @anamnese = Anamnese.find(params[:id])
    respond_with @anamnese
  end

  def update
    @anamnese = Anamnese.find(params[:id])

    if @anamnese.update_attributes params[:anamnese]
      flash[:notice] = t :anamnese_updated
      respond_with @anamnese
    else
      render :action => :edit
    end
  end

end
