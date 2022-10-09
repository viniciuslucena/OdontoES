class Consultum < ApplicationRecord
  belongs_to :dentistum
  belongs_to :paciente

  validates :data_hora, presence: true
  validates :dentistum_id, :paciente_id, presence: true
  validates :data_hora, uniqueness: true

  validate :data_no_passado

  validate :horario_fora_do_expediente

  def data_no_passado
    if data_hora < DateTime.now
      errors.add(:data_hora, "Data e hora não podem ser no passado")
    end
  end

  def horario_fora_do_expediente
    unless dentistum.nil?
      antes_do_horario = data_hora.hour < dentistum.horario_inicio.hour
      depois_do_horario = data_hora.hour > dentistum.horario_fim.hour
      fora_do_expediente = antes_do_horario || depois_do_horario
      if fora_do_expediente
        errors.add(:data_hora, "Horário fora do horário do dentista")
      end
    end
  end
end
