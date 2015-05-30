class PostsController < ApplicationController

  before_action do
    @post_titles = ["Another Cool Post", "Post Title", "Another Longer Post Title", "Oh Cool A Post!", "Most Interesting Post"]
  end

  def index
  end

  def show
    @post_header = params[:name]
  end

end
