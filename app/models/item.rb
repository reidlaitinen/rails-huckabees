class Item < ApplicationRecord
  belongs_to :department
  has_many :reviews

  def avg_rating
    if self.reviews.count == 0
      return "no ratings yet"
    else
      self.reviews.average(:rating).round(2)
    end
  end
end
