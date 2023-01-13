class AdminController < ApplicationController
  def index
  end

  def books
    @books = Book.all.includes(:user)
  end

  def users
  end

  def show_book
    @book = Book.includes(:user).find(params[:id])
  end
end
