# frozen_string_literal: true

class Channel < ApplicationRecord
  has_many :tv_shows

  validates :name, presence: true
end
