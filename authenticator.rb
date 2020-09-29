
def main
    quit = 'n'
    attempts = 0

    basically_a_db = [
                        {
                            :username => 'ben',
                            :password => 'basically-unhackable'
                        },
                        {
                            :username => 'maria',
                            :password => 'uncrackable_hash'
                        }

                     ]

    while quit != 'y' && attempts != 4
        puts "Welcom to the authenticator"
        25.times {print "-"}
        puts

        puts "This program will take an input from the user and compare password"
        print "Username: "
        username = gets.chomp
        print "Password: "
        password = gets.chomp

        user_to_auth = {
                            :username => username,
                            :password => password
                       }
        if basically_a_db.include?(user_to_auth)
            puts "Welcome"
            break
        else 
           puts "Sorry these credentials are incorrect"
           attempts += 1
           if attempts == 4
                puts "Too many attempts try again later"
           else
                puts "Press y to quit or any other key to continue"
                quit = gets.chomp
           end
        end
    end

end

main()