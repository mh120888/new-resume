class MessageMailer < ActionMailer::Base
  # default from: "from@example.com"
  def mail_me(args)
    @email = args[:email]
    @name = args[:name]
    @body = args[:body]
    mail(to: 'matthew.alan.higgins@gmail.com', subject: 'Message from Resume Site', from: @email, name: @name)
  end
end
