class PostsController < ApplicationController

  class Post
    attr_accessor :title, :image, :content

    def initialize(title, image, content)
      @title = title
      @image = image
      @content = content
    end
  end

  before_action do
    @posts = []
    @posts << Post.new("Another Cool Post", "another-cool-post.jpg", "Another Cool Post Content!!!")
    @posts << Post.new("Post Title", "post-title.jpg", "Post Title Content!!!")
    @posts << Post.new("Another Longer Post Title", "another-longer-post-title.jpg", "Another Longer Post Title Content!!!")
    @posts << Post.new("Oh Cool A Post!", "oh-cool-a-post.jpg", "Oh Cool A Post! Content!!!")
    @posts << Post.new("Most Interesting Post","most-interesting-post.jpg","Most Interesting Post Content!!!")
  end

  def index
    @selected_post = @posts.find {|post| post.title == "Most Interesting Post"}
    @other_posts = []
    @other_posts = @posts.select do |post|
      post.title != @selected_post.title
    end
  end

  def show
    @selected_post = @posts.find {|post| post.title == params[:name]}
    @other_posts = []
    @other_posts = @posts.select do |post|
      post.title != @selected_post.title
    end
  end

end
