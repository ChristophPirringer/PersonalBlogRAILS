require 'spec_helper'

describe "Posts" do
  it "creates a new post", js: true do
  visit new_post_path
  fill_in "author", with: "Lisa"
  fill_in "title", with: "chick magnet"
  fill_in "content", with: "in mother russia, chick picks up you"
  page.should have_content("chick magnet")
end
end
