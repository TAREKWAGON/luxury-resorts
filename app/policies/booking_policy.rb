class BookingPolicy < ApplicationPolicy

  def create?
    return true
  end

  def show?
    # record.user == user
    return true
  end

  def update?
    record.user == user
  end
end
