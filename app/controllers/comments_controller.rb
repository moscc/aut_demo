class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    article.comments.create(comments_params)
    flash[:success] = 'Thank you for your feedback'
    redirect_to article_path(article)
  end

  private
  def comments_params
    params.require(:comment).permit(:body, :email)
  end

end
