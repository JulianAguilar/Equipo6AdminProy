class Pago < ActiveRecord::Base
  belongs_to :Pedido
end