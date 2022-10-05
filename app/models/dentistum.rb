class Dentistum < ApplicationRecord
  has_many :consultums, dependent: :destroy

  validates :nome, presence: true, length: {in: 5..40}
  validates :CRO, presence: true, length: { minimum: 3, maximum: 7}
  validate :cpf_valido
  validates :telefone,:presence => true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 15 }
  validates :especialidade, presence: true, length: {in: 4..20}

  def cpf_valido
    if cpf.present? && !CPF.valid?(cpf)
      errors.add(:cpf, 'formato ou numero errado')
    end
  end

end
