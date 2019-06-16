class NotifierMailer < ApplicationMailer
	default from: "mr.luizandre@gmail.com"

  def below_minimum_stock
  	@products = Product.where("stock <= minimum_stock")

    mail to: 'mr.luizandre+cliente@gmail.com', subject: 'Lista de compras'
  end
end
