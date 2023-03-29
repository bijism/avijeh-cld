# avijeh-cld
SSH User Info: Automatically sends an email with user information every time a user logs in via SSH.

You’re welcome! Here’s an example README file that you can use to explain the functionality and how to implement it:

# SSH User Info

This script automatically sends an email with user information every time a user logs in via SSH.

## Installation

1. Clone this repository to your local machine.

2. Navigate to the directory where you cloned the repository.

3. Open the `ssh-user-info.sh` file in a text editor.

4. Replace the email address in the `mail` command with your own email address.

5. Save and close the file.

6. Make the file executable by running the following command in the terminal:

```bash
chmod +x ssh-user-info.sh
Move the file to the /etc/profile.d/ directory by running the following command in the terminal:
sudo mv ssh-user-info.sh /etc/profile.d/
Usage
Every time a user logs in via SSH, this script will automatically send an email with information about the user’s server name, username, IP address, country, browser, OS and time to the email address you specified.

Troubleshooting
If you’re not receiving emails after logging in via SSH, try checking your spam folder or adding the email address you specified to your contacts list.

If you’re still having issues, try running the script manually by typing sudo /etc/profile.d/ssh-user-info.sh in the terminal and checking for any error messages.

Let me know if you have any questions or if there’s anything else I can help you with!


This README file explains how to install and use the script and provides troubleshooting tips if you encounter any issues.

Let me know if you have any questions or if there's anything else I can help you with!
