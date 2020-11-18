class ReviewPolicy < ApplicationPolicy
  def new?
    true
  end

  def create?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
