class Memo < ApplicationRecord
  validates :title, presence: true, length: {maximum: 50}
  validate :validate_title_not_include_comma
  def self.ransackable_attributes(auth_object = nil)
    %w[title created_at]
  end

  def self.ransackable_attributes(auth_object = nil)
    []
  end

belongs_to :user
private

  def validate_title_not_include_comma
    errors.add(:title, 'にカンマを含めることができません') if title&.include?(',')
  end
end
