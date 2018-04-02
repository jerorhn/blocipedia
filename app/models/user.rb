class User < ApplicationRecord
  has_many :wikis
  has_many :collaborators, dependent: :destroy

  after_initialize { self.role ||= :standard }

  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:standard, :premium, :admin]

  def collaborator_for(wiki)
    collaborators.where(wiki_id: wiki.id).first
  end
end
