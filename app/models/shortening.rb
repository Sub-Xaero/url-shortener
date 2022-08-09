class Shortening < ApplicationRecord

  validates :key, presence: true, uniqueness: true
  validates :url, presence: true, url: true

  scope :in_recency_order, -> { order(created_at: :desc) }

  def to_param
    key
  end

end
