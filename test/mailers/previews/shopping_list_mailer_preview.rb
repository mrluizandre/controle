# Preview all emails at http://localhost:3000/rails/mailers/shopping_list_mailer
class ShoppingListMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/shopping_list_mailer/below_minimum
  def below_minimum
    ShoppingListMailer.below_minimum
  end

end
