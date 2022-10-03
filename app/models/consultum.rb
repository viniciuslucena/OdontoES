class Consultum < ApplicationRecord
  belongs_to :dentistum
  belongs_to :paciente

  validates :data_hora, presence: true
  validates :data_hora, uniqueness: true
end
