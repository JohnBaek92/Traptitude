@albums.each do |album|
  json.set! album.id do
    json.extract! album, :id, :title, :musician
  end
end
