require 'rails_helper'

describe Comment do

  context "when user adds comments" do
   before do
    @user = FactoryGirl.create(:user)
    @product = Product.create!(name: "Blue cat")
   end
  end 

   it "should not validate comment without a rating" do
    expect(Comment.new(body:"Review with no rating!", user:@user, rating:0)).to_not be_valid
   end
end   