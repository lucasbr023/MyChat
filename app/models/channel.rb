class Channel < ApplicationRecord
  validates_presence_of :slug, :team, :user
  belongs_to :user
  belongs_to :team
  has_many :messages, as: :messagable, :dependent => :destroy
end
