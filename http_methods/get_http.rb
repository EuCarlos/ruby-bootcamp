require 'rest-client'

api = "localhost:3333/info/"
data = RestClient.get(api)

# p data.code # Return http status

puts data.body # Return all
