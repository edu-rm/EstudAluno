class Alternative < ApplicationRecord
  belongs_to :question

  validates :descricao, presence:true
  validates :question, presence:true

end
