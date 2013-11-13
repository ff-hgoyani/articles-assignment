require 'http_requestor'


desc "Fetch the list of articles"
task :fetch_articles => :environment do
  token = "e8ebeec1064781d94ee62b0e0b823cd4"
  url_str = "http://www.faroo.com/hp/api/api.html"
  url = "http://www.diffbot.com/api/article?token=#{token}&url=#{url_str}"
  response = HttpRequestor.get_request(url)
  articles = response.body.to_json
  p articles
  #Article.create({title: articles['title'],tags:articles['tags']})
end
