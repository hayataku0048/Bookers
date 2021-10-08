class BooksController < ApplicationController
  def show
  end

  def index
    @books = Book.all
  end

  def new
    @books = Book.new
  end

  def create
    books = Book.new (books_params)
    books.save
    redirect_to books_path
  end

  def edit
  end

  private
  def books_params
    params.permit(:title, :body)
  end

end
