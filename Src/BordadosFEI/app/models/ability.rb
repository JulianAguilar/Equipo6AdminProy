class Ability
  include CanCan::Ability

  def initialize(user)
		can :manage, :all if user.role == "gerente"
		can :show, Empleado if user.role == "mostrador"
		can :manage, Pago if user.role == "mostrador"
		can :show, Empleado if user.role == "serigrafia"
		can :show, Empleado if user.role == "bordados"
  end
end
