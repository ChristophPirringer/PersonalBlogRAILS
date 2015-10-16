class Tag < ActiveRecord::Base
  has_many :posts, :through => :posts_tags

  validates :tag_name, :presence => true
end
