class TodolistsController < ApplicationController
  def new
  	@book = Book.new
  	@books = Book.all
  end

  def create
    book = Book.new(book_params)
    if book.save
    flash[:notice] = 'book was successfully created'
      redirect_to todolist_path(book.id)
    else
      render 'todolists/index'
    end
  end

  def index
  	@book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
  def edit
    @book = Book.find(params[:id])
  end
  def update
  	book = Book.find(params[:id])
  	if book.update(book_params)
    flash[:success] = 'book was successfully updated'
      redirect_to todolist_path(book.id)
    else
      render 'todolists/index'
    end
  end
  def destroy
  	book = Book.find(params[:id])
    book.destroy
    redirect_to index_todolist_path
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
