class WelcomeController < ApplicationController
  def index
    @posts = WikiPost.all
  end
  def about
  end
end
