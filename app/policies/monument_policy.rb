class MonumentPolicy < ApplicationPolicy
  def show?
    true
  end

  def update
    owner?
  end

  def create?
    true
  end

  def destroy
    owner?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def owner?
    record.user == user
  end
end
