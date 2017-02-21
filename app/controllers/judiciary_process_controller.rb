class JudiciaryProcessController < ApplicationController

  before_action :authenticate_user!

  def index
    @processes = JudiciaryProcess.all
  end

end
