class UserPolicy < ApplicationPolicy
  # overriding user from ApplicationPolicy because i need the acting_as user id,
  # not the specific one.

  def update?
    return true
  end
end
