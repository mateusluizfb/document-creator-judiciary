class BugReportsController < ApplicationController

  before_action :authenticate_user!

  def new
    @bug_report = BugReport.new
    respond_to do |f|
      f.js
    end
  end

  def create
    @bug_report = BugReport.new bug_report_params

    BugReportMailer.send_message(@bug_report).deliver
    redirect_to  processes_path
  end

  private

  def bug_report_params
    params.require(:bug_report).permit!
  end

end
