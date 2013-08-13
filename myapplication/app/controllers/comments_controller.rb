class CommentsController < ApplicationController
  def create
    @users = User.all
    @comment = Comment.new(micropost_params)
    if @comment.save
      flash[:success] = "Comment done!"
      redirect_to(@comment.post)
    else
      redirect_to(@comment.post)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
 
    redirect_to(@comment.post)
  end

  private

    def micropost_params
      params.require(:comment).permit(:content,:post_id,:name)
    end
end
