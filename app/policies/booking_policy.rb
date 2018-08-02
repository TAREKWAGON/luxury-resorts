class BookingPolicy < ApplicationPolicy

  def create?
    return true
  end

  def show?
    return true
  end

  def update?
    record.user == user
  end
end
