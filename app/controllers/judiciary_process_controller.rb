class JudiciaryProcessController < ApplicationController

  before_action :authenticate_user!

  # GET /processes
  def index
    @processes = JudiciaryProcess.all
  end

  # GET /processes/new
  def new
    @process = JudiciaryProcess.new
  end

  # POST /processes/new
  def create
    @process = JudiciaryProcess.new process_params

    if @process.save
      redirect_to  processes_path
    else
      render :new
    end

  end

  private

  def process_params
    params.require(:process).permit!
  end

end
