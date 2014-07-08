class AdminMailer < ActionMailer::Base
  default from: "cheezedigital@myapp.com"

  def report
    @number_of_users = rand(10000)
    mail(to: 'admin@myapp.com', subject: 'Your Report')
  end
end
