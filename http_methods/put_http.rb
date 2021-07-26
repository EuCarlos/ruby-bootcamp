require 'rest-client'

def editEmailApi(id, email, subject, message)
    api = "localhost:3333/info/#{id}" 
    data = RestClient.put(api, {
        email: email,
        subject: subject,
        message: message
    })
    
    return puts "Data sent successfully"
end

editEmailApi(
    6,
    "contato@admin.dev", 
    "[HTTP TEST] E-mail sent with successfully", 
    "Aute occaecat ullamco in nulla nisi duis duis excepteur incididunt officia dolore minim cupidatat."
)
