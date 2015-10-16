require 'rails_helper'

describe Tag do
  it { should validate_presence_of :tag_name }
  it { should have_many(:posts).through(:posts_tags) }
end
