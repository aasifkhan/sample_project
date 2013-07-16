class UserMailer < ActionMailer::Base
  default :from => "asif.khan7723100@gmail.com"
  def welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome to My Awesome Site")
  end
end
