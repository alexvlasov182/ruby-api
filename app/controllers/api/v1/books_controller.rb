class Api::V1::BooksController < ApplicationController
  before_action :load_book, only: :show
  def index
    @books = Book.all
    json_response 'Index books successfully', true, { books: @books }, :ok
  end

  def show
    json_response 'Show book successfully', true, { book: @book }, :ok
  end

  private

  def load_book
    @book = Book.find_by id: params[:id]
    json_response 'Can not get book', false, {}, :not_found unless @book.present?
  end
end
