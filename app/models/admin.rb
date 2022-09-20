class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nome, presence: true, length: { minimum: 3, maximum: 50 }
  #validates :email, uniqueness: true, o proprio devise ja faz isso
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  #campo senha é validado automaticamente pelo devise
end
