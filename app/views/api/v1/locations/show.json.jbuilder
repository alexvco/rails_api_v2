json.id @location.id
json.name @location.name

json.current do
  json.temp @location.recordings.last.temp
  json.status @location.recordings.last.status
end

json.whateveriwant do
  json.whatyouwant @location.created_at
end



# Output for http://localhost:3000/api/v1/locations/1.json

# {
#   id: 1,
#   name: "New York City",
#   current: {
#     temp: 30,
#     status: "sunny"
#   },
#   whateveriwant: {
#     whatyouwant: "2017-11-19T04:54:17.443Z"
#   }
# }