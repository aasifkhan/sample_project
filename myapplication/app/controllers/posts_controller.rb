class PostsController < ApplicationController
  #before_action :signed_in_user

  def create
    @users = User.all
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def show
    @users = User.all
    @post = Post.find(params[:id])
    @user = @post.user
    # @comments = @posts.comments
    # @com = @posts.comments.build

    @comment = Comment.new( :post => @post )
  end

  def topic
    @users = User.all
    @postss = Post.where("topic = ?",params[:top])
  end

  def destroy
  end

  private

    def post_params
      params.require(:post).permit(:title,:content,:topic)
    end
end
