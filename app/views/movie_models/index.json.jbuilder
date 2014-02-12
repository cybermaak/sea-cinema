json.array!(@movie_models) do |movie_model|
  json.extract! movie_model, :id
  json.url movie_model_url(movie_model, format: :json)
end
