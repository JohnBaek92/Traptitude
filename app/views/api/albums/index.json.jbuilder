json.array! @albums do |album|
    json.id album.id
    json.title album.title
    json.musician album.musician
    json.image_url asset_path(album.image.url)
end
