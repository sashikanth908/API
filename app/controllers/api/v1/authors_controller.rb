class Api::V1::AuthorsController < ApplicationController

  def index
    authors = Author.where("deleted_at IS ?", nil).all
    render json: authors, notice: :ok
    #each_serializer: AuthorSerializer,
  end

  def create
    author = Author.new(author_params)

    if author.save
      render json: author, status: :created
    else
      render json: author.errors
    end
  end

  def update
   author = Author.find(params[:id])

    if author.update(author_params)
      render json: author
    else
      render json: author.errors
    end
  end

  def show
    author=Author.find(params[:id])
  end

  def destroy
    author = Author.find(params[:id])
    author.deleted_at= Time.now

    if author.save
      render json: author
    else
      render json:author.errors
    end
  end

  private
  def author_params
    params.permit(:name, :age, :experience, :books, :email, :phNo, :deleted_at)
  end
end
