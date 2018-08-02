class ResortPolicy < ApplicationPolicy
  def create?
    return true
  end

  def index?
    return true
  end

  def show?
    return true
  end
end
