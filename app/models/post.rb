class Post < ActiveRecord::Base
  validates :author, :presence => true
  validates :title, :presence => true
  validates :content, :presence => true
end
