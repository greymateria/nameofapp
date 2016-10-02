require "rails_helper"

describe CanCan::Ability do
  before(:each) do
    @ability = Object.new
    @ability.extend(CanCan::Ability)
  end

  it "should be able to read anything" do
    @ability.can :read, :all
  end

  it "should be able to manage User" do
  	@ability.can :manage, User
  end

end 


