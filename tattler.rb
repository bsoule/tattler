require 'httparty'

token = "__REPLACE_ME__"

usr, gol = ARGV[0].split('/')
val = ARGV[1]

url = "https://www.beeminder.com/api/v1/users/#{usr}/goals/#{gol}/datapoints.json"
args = {
  :timestamp=>Time.now.to_i,
  :value=>val.to_i,
  :auth_token=>token
}

HTTParty.post(url,:query=>args)

