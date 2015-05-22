class Cliente < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :pedidos

	validates :Nombre, presence: true
	validates :Direccion,presence: true
	validates :Telefono, numericality: true
end
