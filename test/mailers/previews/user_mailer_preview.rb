# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/account_activationpassword_reset
  def account_activationpassword_reset
    UserMailer.account_activationpassword_reset
  end

end
