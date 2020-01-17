json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :user_id, :room_id, :detail, :title   
  json.start schedule.starting_time   
  json.end schedule.finish_time
  json.url schedule.url 
end