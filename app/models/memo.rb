class Memo < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: {maximum: 50}
  validate :validate_title_not_include_comma
  def self.ransackable_attributes(_auth_object = nil)
    %w[title created_at]
  end
belongs_to :user
scope :recent, -> { order(created_at: :desc) }
private

  def validate_title_not_include_comma
    errors.add(:title, 'にカンマを含めることができません') if title&.include?(',')
  end
end
