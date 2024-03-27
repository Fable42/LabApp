class User < ApplicationRecord
  validates :first_name, :second_name, preseance: true, length { maximum: 100 }
  validates :email, length { maximum: 150 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
