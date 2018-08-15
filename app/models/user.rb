class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def posts
    Post.where(user_id: id)
  end

end
