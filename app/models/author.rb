class Author < ApplicationRecord
  has_many :books
  validates :name, presence: :true
  validates :age, presence: :true
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
