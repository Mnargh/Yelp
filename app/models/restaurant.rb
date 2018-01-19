class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :name, presence: true
  validates :description, presence: true,
                        length: { minimum: 10, maximum: 50 }

end
