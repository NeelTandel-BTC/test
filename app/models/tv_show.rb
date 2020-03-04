class TvShow < ApplicationRecord
  belongs_to :channel

  validates :name, :time, presence: true
  before_create :set_unlike
  has_and_belongs_to_many :users

  def set_unlike
    self.favourite = false
  end
end
