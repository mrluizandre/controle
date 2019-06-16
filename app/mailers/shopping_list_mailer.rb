class ShoppingListMailer < ApplicationMailer
	from: Setting.find_by_key('sender_email')

  def below_minimum
  	@products = Product.where('stock <= minimum_stock')
    mail to: Setting.find_by_key('nofify_email'), subject: 'Lista de compras de mantimentos abaixo do estoque mínimo'
  end
end
