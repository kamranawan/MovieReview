json.extract! movie, :id, :name, :year, :rating, :created_at, :updated_at
json.url movie_url(movie, format: :json)
