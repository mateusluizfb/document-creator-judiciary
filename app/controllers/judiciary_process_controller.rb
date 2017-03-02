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

  # PATCH & PUT /processes/:id
  def update
    if JudiciaryProcess.update params[:id], process_params
      redirect_to processes_path
    else
      render :edit
    end
  end

  # EDIR /processes/:id/edit
  def edit
    @process = JudiciaryProcess.find params[:id];
    respond_to do |f|
      f.js
    end
  end

  private

  def process_params
    params.require(:judiciary_process).permit!
  end

end
