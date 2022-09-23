class Paciente < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nome, presence: true, length: {in: 5..40}
  validate :cpf_valido
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  def cpf_valido
    if cpf.present? && !CPF.valid?(cpf)
      errors.add(:cpf, 'formato ou numero errado')
    end
  end
end
