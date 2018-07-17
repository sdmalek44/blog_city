class Comment < ApplicationRecord
  validates_presence_of :body, :user_id, :blog_id
  belongs_to :blog
  belongs_to :user
end
