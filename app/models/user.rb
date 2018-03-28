class User < ApplicationRecord
  has_many :wikis

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
