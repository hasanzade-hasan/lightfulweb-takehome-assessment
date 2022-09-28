class User < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :birthdate, presence: true
  validates :url, presence: true
end
