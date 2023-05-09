class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favourites

  ROLES = %w[Vendedor Comprador]
  validates :role, inclusion: { in: ROLES }

  def restaurant?
    role == 'Vendedor'
  end

  def consumer?
    role == 'Comprador'
  end
end
