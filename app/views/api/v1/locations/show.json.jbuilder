json.id @location.id
json.name @location.name

json.current do
  json.temp @location.recordings.last.temp
  json.status @location.recordings.last.status
end


# Output for http://localhost:3000/api/v1/locations/1.json

# {
#   id: 1,
#   name: "New York City",
#   current: {
#     temp: 30,
#     status: "sunny"
#   }
# }