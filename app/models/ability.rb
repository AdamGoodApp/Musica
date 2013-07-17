class Ability
  include CanCan::Ability

 def initialize(user)
   user ||= User.new
   case
    when user.role?("admin")
    can :manage, :all

    when user.role?("premium")
    can :manage, User do |u|
        u.id == user.id
    end
    can :read, :all

    else
        can :create, User
        can :read, :all

    end
  end
end
