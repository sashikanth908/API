class Api::V1::BooksController < ApplicationController


  def index
    books = Book.all
    render :books, notice: :ok

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
    if book.update(book_params)
      render json: book

    else
      render json: book.errors

    end
  end


  def destroy
    #deleted_at= Time.now
    book = Book.find(params[:id])
    book=Book.find(book_params)
    if book.destroy

      render json: book
    else
      render json:book.errors
    end
  end



  private
  def book_params
    params.permit(:bookname, :genre, :price, :author_id, :price, :timestamps, :deleted_at )
  end
end