class Alternative < ApplicationRecord
  belongs_to :question
  has_many :answer

  validates :descricao, presence:true
  validates :question, presence:true

end
