class ExamsController < ApplicationController

  layout 'admin'
  respond_to :html, :json, :js

  def index
    @exams = Exam.order 'created_at DESC'

    respond_with @exams
  end

  def show
    @exam = get_register(params[:id])
    respond_with @exam
  end

  def new
    @exam = Exam.new

    respond_with @exam
  end

  def edit
    @exam = get_register(params[:id])
    respond_with @exam
  end

  def create
    @exam = Exam.new params[:exam]

    if @exam.save
      flash[:notice] = t :exam_created
      respond_with @exam
    else
      render :action => :new
    end
  end

  def update
    @exam = get_register(params[:id])

    if @exam.update_attributes params[:exam]
      flash[:notice] = t :exam_updated
      respond_with @exam
    else
      render :action => :edit
    end
  end

  def destroy
    @exam = get_register(params[:id])
    @exam.destroy

    respond_with @exam
  end

  private
    def get_register(id)
      Exam.find(id)
    end

end
