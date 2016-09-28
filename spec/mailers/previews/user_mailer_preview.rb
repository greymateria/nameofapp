# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("ryanblair1993@gmail.com", "RB", "User_mailer_preview test")
  end
end