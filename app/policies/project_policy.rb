class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    user.is_a? Customer
  end

  def new?
    index?
  end

  def create?
    new?
  end
end
