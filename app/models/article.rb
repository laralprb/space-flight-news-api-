class Article < ApplicationRecord
  belongs_to :user
  has_many :launches
  has_many :events
end
