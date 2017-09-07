json.array! @favorites do |favorite_track|
  json.id favorite_track.id
  json.title favorite_track.title
  json.features favorite_track.features
  json.musician favorite_track.musician
  json.image_url asset_path(favorite_track.album.image.url)
end
