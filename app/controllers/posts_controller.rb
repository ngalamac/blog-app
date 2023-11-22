class PostsController < ApplicationController
  def index
    @posts = Post.includes(:author, :comments, :likes).all
  end
end
