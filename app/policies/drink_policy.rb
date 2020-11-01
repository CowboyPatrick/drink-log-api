class DrinkPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user).order(created_at: :desc)
    end
  end

  def show?
    true
  end

  def update?
    true
  end

  def create?
    true
  end

  def destroy?
    true
  end
end
