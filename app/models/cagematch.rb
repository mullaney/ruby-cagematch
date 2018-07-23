class Cagematch < ApplicationRecord
  validates :title, presence: true
  validates :slug, presence: true
  validates_format_of :slug, with: /\A[a-z0-9\-]+\z/

  # validate :slug_must_only_be_letters_numbers_and_dashes


  # protected

  # def slug_must_only_be_letters_numbers_and_dashes
  #   errors.add(:slug, 'should only be lower case letters, numbers and dashes') if slug.gsub(/[a-z0-9\-]/)
  # end

end
