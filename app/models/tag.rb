class Tag < ActiveRecord::Base
  has_and_belongs_to_many :posts
  validates :tag_name, :presence => true
end
