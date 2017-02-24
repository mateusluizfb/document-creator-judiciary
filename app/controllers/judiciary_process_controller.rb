class JudiciaryProcessController < ApplicationController

  before_action :authenticate_user!

  # GET /processes
  def index
    @processes = JudiciaryProcess.all
  end

  def show
  end

  # GET /processes/new
  def new
    @process = JudiciaryProcess.new
  end

  # POST /processes
  def create
    @process = JudiciaryProcess.new process_params
    if @process.save
      redirect_to  processes_path
    else
      render :new
    end
  end

  # DELETE /processes/:id
  def destroy
    JudiciaryProcess.destroy params[:id]
    redirect_to processes_path
  end

  def update
  end

  def edit
    # TODO ENTENDER ISSO
    respond_to do |f|
      f.html
      f.js
    end
  end

  private

  def process_params
    params.require(:process).permit!
  end

end
