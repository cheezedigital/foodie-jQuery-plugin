# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
# this is where we set up the previews.
class NotificationMailerPreview < ActionMailer::Preview

  def contact_form
    params = {user_email: 'billy@cheeze.info', in_regard_to: 'eating cheeze', content: 'BLARG! dude'}
    NotificationMailer.contact_form(params)
  end

end
