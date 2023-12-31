class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, counter_cache: true

  def update_post_likes_counter
    post.update(likes_counter: post.likes.count)
  end
end
