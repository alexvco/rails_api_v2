class Api::V1::LocationsController < ApiController
  before_action :set_location

  def show
  end
  # curl http://localhost:3000/api/v1/locations/1
  # in browser http://localhost:3000/api/v1/locations/1 # this also works because we are now inheriting from ApiController which has a default format of json
  # in browser http://localhost:3000/api/v1/locations/1.json

  # What's really neat about this is that now that we have this URL, we can go into anything we want, we could go into Python or Swift or Android or ruby or JavaScript, and we can hit that URL, and we can grab that data. 
  # So even if we were in bash, and we wanted to run curl, we can grab the data in a curl request, and then parse that string response as JSON, and then our bash code could even have access to that


  private

  def set_location
    @location = Location.find(params[:id])
  end
end