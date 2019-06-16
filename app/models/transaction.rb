class Transaction < ApplicationRecord
  belongs_to :product

  enum :transaction_type => { :'entrada' => 1, :'saída' => 0}
  validates_presence_of :amount, :transaction_type

  after_create :change_product_stock_create
  after_destroy :change_product_stock_destroy

  private
  	def change_product_stock_create
  		if self.entrada?
  			self.product.stock += self.amount
  		elsif self.saída?
  			self.product.stock -= self.amount
  		end
  		self.product.save
  	end

  	def change_product_stock_destroy
  		if self.entrada?
  			self.product.stock -= self.amount
  		elsif self.saída?
  			self.product.stock += self.amount
  		end
  		self.product.save
  	end
end
