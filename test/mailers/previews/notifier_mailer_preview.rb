# Preview all emails at http://localhost:3000/rails/mailers/notifier_mailer
class NotifierMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifier_mailer/below_minimum_stock
  def below_minimum_stock
    NotifierMailer.below_minimum_stock
  end

end
