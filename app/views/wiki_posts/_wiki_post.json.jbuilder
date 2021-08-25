json.extract! wiki_post, :id, :created_at, :updated_at, :title
json.url wiki_post_url(wiki_post, format: :json)
