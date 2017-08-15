json.array! @tracks do |track|
  json.id track.id
  json.title track.title
  json.features track.features
  json.musician track.album.musician 
end
