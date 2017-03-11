class BugReportMailer < ApplicationMailer

  def send_message(bug_report)
    @bug_report = bug_report
    mail from: 'postmaster@mg.document-generator-judiciary.com', to: 'mateuslfreitasb@gmail.com', subject: 'Document generator Report'
  end

end
