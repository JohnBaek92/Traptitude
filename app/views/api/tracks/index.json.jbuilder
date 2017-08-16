json.array! @tracks do |track|
  json.id track.id
  json.album_id track.album.id
  json.title track.title
  json.features track.features
  json.musician track.album.musician
  json.image_url asset_path(track.album.image.url)
end
