class Person < ApplicationRecord
  before_save { self.email = email.downcase }
  before_save { self.name = name.downcase.titleize }
  
  VALID_NAME = /\A[a-z A-Z]/i
  validates :name, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 },
            format: { with: VALID_NAME }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
            
  def self.search(search)
    @people = Person.all
    
    @people = Person.where(["name LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%"])
      
    return @people
    
  end
end
