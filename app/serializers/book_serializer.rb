class BookSerializer < ActiveModel::Serializer
  attributes :id, :bookname, :description, :genre, :author_id, :price
end