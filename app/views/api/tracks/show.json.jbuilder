annotations = @track.annotations

json.set! :track do
  json.id @track.id
  json.album_id @track.album_id
  json.title @track.title
  json.features @track.features
  json.producer @track.producer
  json.lyrics @track.lyrics
  json.annotationIds = @track.annotations.map do |anno|
    anno.id
  end
end

json.set! :annotations do
  annotations.map do |anno|
    json.set! anno.id do
    json.extract! anno, :user_id, :track_id, :start_idx, :end_idx, :body, :id
    end
  end
end
