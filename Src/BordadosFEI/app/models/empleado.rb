class Empleado < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
	ROLES = %w[gerente mostrador serigrafia bordados]
	validates :Nombre, presence: true
	validates :Direccion,presence: true
	validates :Telefono, numericality: true
	validates :Sueldo, presence: true, numericality: true
end
