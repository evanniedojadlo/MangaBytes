class RequestsEmail < ActionMailer::Base
  default from: "hello@mangabytes.com"

  def welcome_email(user)
  	@user = user
  	@url = 'http://example.com/login'
  	mail(to: @user.email, subject: 'Welcome to Mangabytes!')
  end
end