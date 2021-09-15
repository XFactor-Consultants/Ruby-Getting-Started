class AddAuthorDescriptionToWikiPost < ActiveRecord::Migration[6.1]
  def change
    add_column :wiki_posts, :description, :string
    add_column :wiki_posts, :author, :string
  end
end
