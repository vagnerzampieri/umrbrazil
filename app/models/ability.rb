class Ability < ActiveRecord::Base
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.try(:type_user).try(:name) == 'Admin UMRBrazil'
      can :manage, :all
    #elsif user.type_user.name == 'Médico'
    #elsif user.type_user.name == 'Paciente'
    #elsif user.type_user.name == 'Enfermeiro'
    #elsif user.type_user.name == 'Setor'
    else
      cannot :manage, :all
    end
  end
end
