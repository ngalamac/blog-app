class UsersController < ApplicationController
  def show
    @user = User.includes(posts: %i[comments likes]).find(params[:id])
  end
end
