class WelcomeController < ApplicationController
  def index
    @wiki_posts = WikiPost.all
  end
  def about
  end
end
