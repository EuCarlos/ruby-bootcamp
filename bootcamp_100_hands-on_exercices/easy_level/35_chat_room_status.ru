=begin 
    Write a function that returns the number od users in a chatroom based on the following rule:
        1. If there is one, return "no one online"
        2. If there is 1 person, return "user1 online"
        3. If there are 2 people, return "user1  and user2 online
        4. If there are "n>2" people, return the first two names and add "and n-2 more online"
            For example, if there are 5 users, return: "user1, user2 and 3 more online"
=end

def chatroomStatus(users)
    case users.size
    when 0
        status = "\033[32m•\033[0m No one online\n"
    when 1
        status = "\033[32m•\033[0m #{users[0]} online\n"
    when 2
        status = "\033[32m•\033[0m #{users[0]} and #{users[1]} online\n"
    else
        status = "\033[32m•\033[0m #{users[0]}, #{users[1]} and #{users.size - 2} more online\n"
    end

    print status
end

chatroomStatus([])                              # • No one online
chatroomStatus(["user_dev"])                    # • user_dev online
chatroomStatus(["user_dev", "carlos_alves"])    # • user_dev and carlos_alves online

chatroomStatus([
        "user_dev", 
        "carlos_alves", 
        "ruby123", 
        "admin321",
        "test789"
])                                              # • user_dev, carlos_alves and 3 more online