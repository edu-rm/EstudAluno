class Question < ApplicationRecord
  belongs_to :user
  has_many :alternatives, dependent: :destroy
  accepts_nested_attributes_for :alternatives, reject_if: :all_blank, allow_destroy: true

  validates :description, presence:true
end
