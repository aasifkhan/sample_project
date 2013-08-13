class StaticPagesController < ApplicationController
  def home
    @users=User.all
    @post = current_user.posts.build if signed_in?
  end

  def help
    @users=User.all
  end

  def contact
    @users=User.all
  end

  def about
    @users=User.all
  end
end
