# @albums.each do |album|
#   json.set! album.id do
#     json.extract! album, :id, :title, :musician
#   end
# end

json.array! @albums do |album|
    json.id album.id
    json.title album.title
    json.musician album.musician
    json.image_url asset_path(album.image.url)
end
