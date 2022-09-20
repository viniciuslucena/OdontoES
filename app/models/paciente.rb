require "cpf_cnpj"

class Paciente < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :nome, presence: true, length: {in: 5..40}
  validate :data_nascimento_valida
  validate :cpf_valido
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  def data_nascimento_valida
    if data_nascimento.present? && data_nascimento > Date.today
      errors.add(:data, 'nao pode ser no futuro')
    end
  end

  def cpf_valido
    if cpf.present? && !CPF.valid?(cpf)
      errors.add(:cpf, 'formato ou numero errado')
    end
  end
end
