def nico_cipher(message, key)
    ks, ms = key.size, message.size
    msg = message + " "*(ks*(ms.to_f/ks).ceil - ms)

    result = msg.scan(/.{#{ks}}/).map{|ss|
      ss.chars.sort_by.with_index{ |c, i| [key[i],i] }.join
    }.join

    puts result
end

nico_cipher("carlos", "ruby") # "rcal os"

nico_cipher("random", "612345") # "andomr"