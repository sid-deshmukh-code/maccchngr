# maccchngr


# MAC Address Changer Script

## Description

This Bash script allows you to change the MAC (Media Access Control) address of a network interface on a Linux system. It generates a random MAC address by combining a random Organizationally Unique Identifier (OUI) and a random Universally Administered Address (UAA) part, providing a level of privacy and security.

## Prerequisites

- This script is designed for Linux systems.
- You must have administrative privileges or sudo access to change the MAC address of a network interface.

## Usage

1. Make the script executable if it's not already:

   ```
   chmod +x maccchngr.sh
   ```

2. Run the script:

   ```
   ./maccchngr.sh
   ```

3. The script will capture the current MAC address of the "eth0" network interface, generate a random MAC address, and set the network interface's MAC address to the generated value.

## Configuration

- You can modify the network interface name ("eth0" in this script) to match your system's configuration.

## Disclaimer

Changing MAC addresses can have legal and ethical implications, and it may disrupt network services or violate terms of use agreements. Use this script responsibly and in compliance with local laws and regulations.

