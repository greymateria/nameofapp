class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  #scope to sort the comments by rating, in descending order
  scope :rating_desc, -> { order(rating: :desc) } 

  #scope to sort the comments by rating, in ascending order
  scope :rating_asc, -> { order(rating: :asc) } 

  #5.9 validate the presence of below attributes before posting comment
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }

  after_create_commit { CommentUpdateJob.perform_later(self, @user) }

  

end
