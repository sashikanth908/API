class Book < ApplicationRecord
  belongs_to :author
  validates :bookname, presence:true
  validates :genre, presence:true
  validates :price, presence:true
  validates :author_id, presence:true
end
