class BugReportsController < ApplicationController

  before_action :authenticate_user!

  def new
    @bug_report = BugReport.new
    respond_to do |f|
      f.js
    end
  end

  def create
    BugReportMailer.send_message params[:bug_report]
    redirect_to  processes_path
  end

end
