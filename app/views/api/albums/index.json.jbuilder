@albums.each do |album|
  json.set! album.id do
    json.extract! album, :id, :title, :musician, :image_url
  end
end
