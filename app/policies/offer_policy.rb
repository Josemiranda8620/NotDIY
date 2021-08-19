class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

end
