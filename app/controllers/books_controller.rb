class BooksController < ApplicationController
  def show
    @books = Book.find(params[:id])

  end

  def index
    @books = Book.all
  end

  def new
    @books = Book.new
  end

  def create
    books = Book.new(books_params)
    books.save
    redirect_to book_path(books.id)
  end

  def edit
    @books = Book.find(params[:id])
  end

  def update
    books = Book.find(params[:id])
    books.update (books_params)
    redirect_to book_path(books.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def books_params
    params.require(:book).permit(:title, :body)
  end

end
