class Question < ApplicationRecord
  belongs_to :user
  has_many :alternatives
  validates :description, presence:true
end
