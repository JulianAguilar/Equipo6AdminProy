class Cliente < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :Nombre, presence: true
  validates :Direccion, presence: true
  validates :Telefono, presence: true, :numericality => { :only_integer => true },  :length => { :minimum => 7 }
  
  has_many :Pedidos
end
