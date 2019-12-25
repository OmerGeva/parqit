class ParkingSpotPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def show?
    true
  end

  def create?
    true
  end

  def toggle_available?
    true
  end
end
