require 'rails_helper'

describe Order, :type => :model do

	before do
		@user = FactoryGirl.build(:user)
		@product = FactoryGirl.build(:product)
		@order = FactoryGirl.build(:order, user: @user, product: @product)
	end

	it "should total the correct amount for 1 item" do
		expect(@order.total).to eq 500
	end

	it "should not validate the wrong amount" do
		expect(@order.total).to_not eq 600
	end


end