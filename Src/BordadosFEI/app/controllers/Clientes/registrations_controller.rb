class Clientes::RegistrationsController < Devise::RegistrationsController
	private

  def sign_up_params
    params.require(:cliente).permit(:Nombre,:Direccion,:Telefono, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:cliente).permit(:Nombre,:Direccion,:Telefono, :email, :password, :password_confirmation, :current_password)
  end
end
