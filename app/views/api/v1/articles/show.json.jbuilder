  json.extract! @article, :id, :featured, :title, :url, :imageUrl, :newsSite, :summary, :publishedAt
  json.launches @article.launches do |launch|
    json.extract! launch, :id, :provider
  end
  json.events @article.events do |event|
    json.extract! event, :id, :provider
  end
