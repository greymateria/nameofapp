class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  #scope to sort the comments by rating, in descending order
  scope :rating_desc, -> { order(rating: :desc) } 

  #scope to sort the comments by rating, in ascending order
  scope :rating_asc, -> { order(rating: :asc) } 
end
