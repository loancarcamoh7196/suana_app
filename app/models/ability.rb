class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new(role: 'ghest') # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.vendor?
      can :manage, [Detail, Category, Brand, Banner]
      can [:read, :create, :update], [Product, Gift, Author]
      can [:read, :revised], Suggestion
      can [:read, :update, :banned], Comment
      can :manage, :page
    elsif user.user?
      can [:index, :show], [Detail]
      can [:edit, :update, :destroy], Comment, user_id: user.id
      can [:create, :cart, :remove_one_item, :destroy, :buy, :bought_products, :empty_cart], Order
      can [:index, :create, :destroy], Wishlist
      can [:create, :new], Suggestion
      can :manage, Billing
      can :manage, :page
      can :manage, :profile
    else
      can [:index, :show], [Detail, Gift]
      can :view_for_category, Detail
      can :manage, :page
    end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
