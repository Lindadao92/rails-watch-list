class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks, dependent: :destroy # when deleting a list, delete bookmarks
  has_many :movies, through: :bookmarks
  has_one_attached :photo
end
