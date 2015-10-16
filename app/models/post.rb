class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags

  validates :author, :presence => true
  validates :title, :presence => true
  validates :content, :presence => true
end
