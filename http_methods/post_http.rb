require 'rest-client'

def sentEmailApi(email, subject, message)
    api = "localhost:3333/info/"
    data = RestClient.post(api, {
        email: email,
        subject: subject,
        message: message
    })
    
    return puts "Data sent successfully"
end

sentEmailApi(
    "contato@carlos.dev", 
    "[HTTP TEST] E-mail sent with successfully", 
    "Tempor officia et eiusmod commodo magna fugiat nostrud reprehenderit incididunt ."
)
