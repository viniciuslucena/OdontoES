require "cpf_cnpj"
class Paciente < ApplicationRecord
  has_many :consultums, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nome, presence: true, length: {in: 5..40}
  validate :cpf_valido
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validate :nascimento_eh_valido

  def cpf_valido
    if cpf.present? && !CPF.valid?(cpf)
      errors.add(:cpf, 'formato ou numero errado')
    end
  end

  def nascimento_eh_valido
    if(data_nascimento.present? && data_nascimento > Time.zone.today)
      errors.add(:data_nascimento, '- Insira uma data anterior a atual.')
    end
  end

end
