class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create(article_params)
    flash[:success] = 'Your article was successfully created'
    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end

end
