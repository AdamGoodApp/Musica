class Ability
  include CanCan::Ability

 def initialize(user)
   user ||= User.new
   case
    when user.role?("admin")
      can :manage, :all
    when user.role?("premium")
      can :read, :all
      can :manage, User, id: user.id
      can :manage, [Music, Comment, Image], user_id: user.id
    else
      can :create, User
      can :read, :all
    end
  end
end
