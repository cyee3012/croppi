class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :final_pics
  has_many :benchmark_pics
  validates :name, presence: true
  validates :email, uniqueness: true
end
