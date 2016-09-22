class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  #custom method for product to return the comment with the highest rating
  def highest_rating_comment
  	comments.rating_desc.first
	end

  #custom method for product to return the comment with the lowest rating
  def lowest_rating_comment
  	comments.rating_asc.first
	end

  #used for Raty

  def average_rating
    comments.average(:rating).to_f
  end

end