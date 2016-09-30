require 'rails_helper'

describe Product do
  
  context "when the product has comments" do
    before do
      @product = Product.create!(name: "Tiny cat")
      @user = User.create!(email: "user1@mail.com", password: "123456")
      @product.comments.create!(rating: 1, user: @user, body: "Awful cat!")
      @product.comments.create!(rating: 3, user: @user, body: "Decent cat")
      @product.comments.create!(rating: 5, user: @user, body: "Awesome cat!")
    end

    it "returns the average rating of all comments" do
      #"Expect the product's average rating to equal 3" 
      #(The average of 1 3 and 5 should be 3)
      expect(@product.average_rating).to eq 3
    end
  end

  it "is an invalid product" do
    #new product created with only a description. 
    #products require a name and description
    expect(Product.new(description: "Nice cat")).not_to be_valid
  end



end