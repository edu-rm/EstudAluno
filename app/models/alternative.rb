class Alternative < ApplicationRecord
  belongs_to :question
  has_many :answer, dependent: :destroy

  validates :descricao, presence:true
  validates :question, presence:true

end
