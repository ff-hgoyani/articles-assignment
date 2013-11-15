class ArticlesController < ApplicationController
  
  def index
    @articles = Article.order('updated_by desc')
  end


end
