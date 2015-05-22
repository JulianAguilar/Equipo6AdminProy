class Pedido < ActiveRecord::Base
  belongs_to :Cliente
	has_one :Pago
	has_many :Mercancias


end
