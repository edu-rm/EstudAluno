class Question < ApplicationRecord
  belongs_to :user
  has_many :alternatives, dependent: :destroy
  accepts_nested_attributes_for :alternatives, reject_if: :all_blank, allow_destroy: true

  enum tipos: { matematica: 'Matemática', geografia: 'Geografia', historia: 'História' }

  validates :description, :area_conhecimento, presence:true
end
