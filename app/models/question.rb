class Question < ApplicationRecord
  belongs_to :user
  has_many :alternatives
  accepts_nested_attributes_for :alternatives, reject_if: :all_blank, allow_destroy: true

  validates :description, presence:true
end
