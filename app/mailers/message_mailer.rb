class MessageMailer < ActionMailer::Base
  # default from: "from@example.com"
  def mail_me(args)
    @email = args[:email]
    @name = arg[:name]
    @body = args[:body]
    @subject = args[:subject]
    mail(to: 'matthew.alan.higgins@gmail.com', subject: @subject, from: @email, name: @name)
  end
end
