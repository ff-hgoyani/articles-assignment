json.array!(@articles) do |article|
  json.extract! article, :title, :tags, :last_updated
  json.url article_url(article, format: :json)
end
