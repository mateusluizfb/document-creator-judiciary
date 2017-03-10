class BugReport < MailForm::Base

  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :message

  def headers
    {
      to: 'mateuslfreitasb@gmail.com',
      subject: 'Document Generator Bug Report',
      from: %(<#{email}>)
    }
  end

end
