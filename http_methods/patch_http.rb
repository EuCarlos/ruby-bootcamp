require 'rest-client'

def editEmailApi(id, email, subject, message)
    api = "localhost:3333/info/#{id}" 
    data = RestClient.patch(api, {
        email: email,
        subject: subject,
        message: message
    })
    
    return puts "Data sent successfully"
end

editEmailApi(6, "contato@teste.dev")

