class Question < ApplicationRecord
  belongs_to :user
  has_many :alternatives, dependent: :destroy
  has_many :answer
  accepts_nested_attributes_for :alternatives, reject_if: :all_blank, allow_destroy: true

  enum tipos: {
    matematica: 'Matemática',
    geografia: 'Geografia',
    historia: 'História',
    biologia: 'Biologia',
    filosofia: 'Filosofia',
    fisica: 'Física',
    quimica: 'Química',
    portugues: 'Português',
    espanhol: 'Espanhol',
    sociologia: 'Sociologia',
    ingles: 'Inglês',
  }

  validates :description, :area_conhecimento, presence:true
end
