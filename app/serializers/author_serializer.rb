class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :experience, :email, :phNo, :books

  def books
    booknames = []

    object.books.each do |book|
      booknames << book.bookname
    end
    booknames
  end
   #has_many :books, only: %i(bookname)
   #has_many :books, serializer: BookSerializer, only: %i(bookname)
end
