class BookingPolicy < ApplicationPolicy
  def destroy?
    record.user == user
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
