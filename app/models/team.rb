class Team < ApplicationRecord
  validates :name, presence: true
  belongs_to :cagematch
end
