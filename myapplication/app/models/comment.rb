class Comment < ActiveRecord::Base
  belongs_to :post
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 1000 }
  validates :post_id, presence: true
end
