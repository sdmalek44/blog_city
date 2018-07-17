class Comment < ApplicationRecord
  validates_presence_of :body, :user_id, :blog_id
  belongs_to :blog
  belongs_to :user

  def created_time
    created_at.strftime('%m/%e/%y %l:%M %p')
  end
end
