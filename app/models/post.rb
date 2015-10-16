class Post < ActiveRecord::Base
  has_many :tags, :through => :posts_tags
  
  validates :author, :presence => true
  validates :title, :presence => true
  validates :content, :presence => true
end
