class Team < ApplicationRecord
  validates_presence_of :slug, :user
  belongs_to :user
  has_many :talks
  has_many :channels
end
