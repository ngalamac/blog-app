class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  def update_post_counter
    author.update(posts_counter: author.posts.count)
  end

  def most_recent_comments(limit = 5)
    comments.order(created_at: :desc).limit(limit)
  end
end
