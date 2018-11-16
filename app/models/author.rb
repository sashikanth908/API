class Author < ApplicationRecord
  has_many :books



  validates :name, presence: :true
  validates :age, presence: :true
  #validates :email, presence: :true
  #validates_format_of :email, :with => /@/


  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
