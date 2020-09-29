
def main
    # set quit to no and attempts to 0
    quit = 'n'
    attempts = 0

    # create or list of hashes, aka basically a database
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

    # while we don't want to quit and haven't used up our 4 attempts
    # keep trying to get in
    while quit != 'y' && attempts != 4
        puts "Welcom to the authenticator"
        25.times {print "-"}
        puts

        # get username and password
        puts "This program will take an input from the user and compare password"
        print "Username: "
        username = gets.chomp
        print "Password: "
        password = gets.chomp

        # create hash of data
        user_to_auth = {
                            :username => username,
                            :password => password
                       }
        # see if data is in the "database"
        if basically_a_db.include?(user_to_auth)
            puts "Welcome"
            break
        else
            # if not tell them so and increment attempts
            puts "Sorry these credentials are incorrect"
            attempts += 1
            # if too many attempts then that's it
            if attempts == 4
                puts "Too many attempts try again later"
            else
                # continue on anything buy y
                puts "Press y to quit or any other key to continue"
                quit = gets.chomp
           end
        end
    end

end

main()