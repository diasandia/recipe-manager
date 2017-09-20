class User < ApplicationRecord
  has_many :recipes, dependent: :destroy

  validates :username, :email, { presence: true, uniqueness: true }
  validate :has_password
  

  has_secure_password

  private

  def has_password
    if self.password == ""
      errors.add(:password, 'can\'t be empty')
    end
  end
end
