class Cliente < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :Nombre, :Apellido_paterno, :Apellido_materno, :Direccion, :Telefono, presence: true
	validates :Telefono, numericality: {only_integer: true}
end
