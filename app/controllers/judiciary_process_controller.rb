class JudiciaryProcessController < ApplicationController

  before_action :authenticate_user!

  def index
    @processes = JudiciaryProcess.all
  end

  def new
    @process = JudiciaryProcess.new
  end

  def create

  end

end
