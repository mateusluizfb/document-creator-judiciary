class BugReportsController < ApplicationController

  before_action :authenticate_user!

  def new
    @bug_report = BugReport.new
    respond_to do |f|
      f.js
    end
  end

  def create
    @bug_report = BugReport.new params[:bug_report]
    if @bug_report.deliver
        redirect_to  processes_path
    end
  end

end
