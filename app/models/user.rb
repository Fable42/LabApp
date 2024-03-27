class User < ApplicationRecord
  has_many :lab_reports

  validates :first_name, :second_name, presence: true, length: { maximum: 100 }
  validates :email, length: { maximum: 150 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
