require 'rest-client'

def deteleEmailApi(id)
    api = "localhost:3333/info/#{id}"
    RestClient.delete api
    return puts "Data deleted successfully"
end

deteleEmailApi(4)