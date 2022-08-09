class Shortening < ApplicationRecord

  validates :key, presence: true, uniqueness: true
  validates :url, presence: true, url: true

end
