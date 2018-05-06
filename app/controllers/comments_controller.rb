class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    Comment.new(body: params[:comment][:body], article_id: article.id)
    flash[:success] = 'Thank you for your feedback'
    redirect_to root_path
  end
end
