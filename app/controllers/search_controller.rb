class SearchController < ApplicationController
  def index
    @query = Book.ransack(params[:q])
    @posts = @query.result(distinct: true)
  end
end
