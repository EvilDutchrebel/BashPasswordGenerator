Passwords, they are how we access our online profiles and files.
However, a lot of people use 1 password that is hackable by bruteforce alone. Not only is it not smart, it's potentially dangerous.
It's like painting arrows where you leave your key under the fake rock next to the door, you don't want a random person in your house right?

So this is the first step in making my Password Generator in Bash to be able to get a quick on the go random password that takes atleast a trillion years to crack.

  Code:

    #!/bin/bash

    # Password Generator

    # Length of the password
    length=16

    # Character set for the password
    charset='A-Za-z0-9!@#$%^&*()_+-='

    # Generate the password
    password=$(cat /dev/urandom | tr -dc "$charset" | fold -w "$length" | head -n 1)

    # Display the password
    echo "Generated Password: $password"

Right now it is fairly simple but it works really well.
Maybe in the future I will add a link to a passsword vault, but that's future Robin talking, he can be a distracted idiot sometimes (yes I like to "Bash" myself sometimes)

Anyway, if you need a random password generator that is deemed quite safe, feel free to use it!
