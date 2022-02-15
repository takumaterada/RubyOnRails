class BooksController < ApplicationController

  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
    @book = Book.new
  end


  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
     if book.update(book_params)
     flash[:notice] = "Book was successfully updated."
     redirect_to book_path(book.id)
     end
  end

  def create
    @book = Book.new(book_params)
    @books = Book.all
     if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(book.id)
     else
      render :index
     end

  end


  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end


   private

  def book_params
    params.require(:book).permit(:Title, :Body)
  end


end
