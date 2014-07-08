class NotificationMailer < ActionMailer::Base
  default from: "no-reply@myapp.com"
    # sets up action, and this is the name of the template.
    # mailer action, we can pass arguments. what information might be inside the email.
    # we have three arguements here. user email, in regards to, content. we'll pass in a hash
    # any data
    # the last thing. must be mail object. return object by calling mail method.
    # this example looks like the user email
    # action mailer docs if we want some more info.
    # create email content login.
    # create a view called contact_form
    # in views notification mailer, create a file called contact_form.html.erb.
    #<h1>Contact Request</h1>
    #  <% @params.each_pair do |key, value| %>
    #  <p><%= key %> -- <%= value %></p>
    # <% end %>
    # this above goes into the contact_form.html.erb file
  def contact_form(params)
    @params = params
    mail(from: @params[:user_email to: 'me@myapp.com', subject: 'You have a new contact request'])
  end

end
