class Api::V1::BooksController < ApplicationController


  def index
    books = Book.where("deleted_at IS ?", nil).all
    render json: books,  notice: :ok
    #each_serializer: BookSerializer,
  end

  def create
    book = Book.new(book_params)
    if book.save
      render json: book, status: :created
    else
      render json: book.errors
    end
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      render json: book
    else
      render json: book.errors
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.deleted_at= Time.now
    if book.save
      render json: book
    else
      render json: book.errors
    end
  end

  def show
    book = Book.find(params[:id])
    if book.show(book_params)
      render json: book
    else
      render json: book.errors
    end
  end

  private
  def book_params
    params.permit(:bookname, :genre, :price, :author_id, :description, :price, :deleted_at )
  end
end