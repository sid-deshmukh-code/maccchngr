#!/bin/bash

# Capture the current MAC address in vendormac.txt
macchanger -l eth0 > vendormac.txt

# Generate a random OUI (Organizationally Unique Identifier) for the new MAC address
ouimac=$(shuf -n 1 vendormac.txt | awk '{print $3}')

# Generate a random UAA (Universally Administered Address) part for the new MAC address
uaamac=$(printf "%02x:%02x:%02x" $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) )

# Set the new MAC address using the OUI and UAA
new_mac="$ouimac:$uaamac"
macchanger -m "$new_mac" eth0
