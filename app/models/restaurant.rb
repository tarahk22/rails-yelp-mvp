class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :category, presence: true
  validates :category, inclusion: {
    in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid category"
  }
  before_destroy :destroy_reviews

  private

  def destroy_reviews
    reviews.destroy_all
  end
end
