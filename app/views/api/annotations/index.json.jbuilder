json.array! @annotations do |anno|
  json.id anno.id
  json.user_id anno.user_id
  json.track_id anno.track_id
  json.body anno.body
  json.start_idx anno.start_idx
  json.end_idx anno.end_idx
end
