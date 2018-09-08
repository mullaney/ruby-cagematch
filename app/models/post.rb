class Post < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :body, presence: true
  belongs_to :cagematch

  scope :unpublished, -> { where(published_at: nil) }
  scope :published, -> { where.not(published_at: nil) }

  def excerpt
    self.body.truncate(50, separator: ' ')
  end
end
