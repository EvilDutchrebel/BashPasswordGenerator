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
