class User < ApplicationRecord
  # has_many :reviews

  validates :email, :user_name, :password, presence: { message: "must be given please" }
  validates :email, uniqueness: true
  validates :password, :presence => true,
                       :length => {:within => 6..40},
                       :on => :create


end
