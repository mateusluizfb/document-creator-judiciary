class BugReportMailer < ApplicationMailer

  def send_message(vug_report)
    @bug_report = bug_report
    mail from: 'postmaster@mg.document-generator-judiciary.com', to: 'mateuslfreitasb@gmail.com', subject: 'Document generator Report'
  end

end
