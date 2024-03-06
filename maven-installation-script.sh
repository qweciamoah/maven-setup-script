#!/bin/bash

#Author: Paul Amoah

#Date Created:06/03/2024

#!/bin/bash

log_file="/home/ubuntu/maven-log.txt"
current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Check if the log file exists; if not, create it
if [ ! -e "$log_file" ]; then
    touch "$log_file" || { echo "Error: Unable to create log file." >&2; exit 1; }
    fi

    # Set hostname
    sudo hostnamectl set-hostname maven || { echo "Error: Unable to set hostname." | tee -a "$log_file"; exit 1; }

    # Update and upgrade
    sudo apt update -y || { echo "Error: Unable to update packages." | tee -a "$log_file"; exit 1; }
    sudo apt upgrade -y || { echo "Error: Unable to upgrade packages." | tee -a "$log_file"; exit 1; }

    # Change directory to /opt/ and run commands in a subshell
    (
        cd /opt/ || exit

     # Install dependencies
                sudo apt install default-jdk git -y ||
	{ echo "Error: Unable to install dependencies." | tee -a "$log_file"; exit 1; }

                    # Download and install Maven
      sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
                            sudo tar -xvzf apache-maven-3.9.6-bin.tar.gz 
                                sudo rm apache-maven-3.9.6-bin.tar.gz
                     sudo mv apache-maven-3.9.6/ /opt/maven ||
	{ echo "Error: Unable to install Maven." | tee -a "$log_file"; exit 1; }
                                    )

# Add Maven to the PATH in .bashrc of the ubuntu user (outside the subshell)
           sudo -u ubuntu bash -c 'echo "export M2_HOME=/opt/maven" >> /home/ubuntu/.bashrc'
         sudo -u ubuntu bash -c 'echo "export PATH=\$PATH:\$M2_HOME/bin" >> /home/ubuntu/.bashrc'

 echo "Hostname changed, Java & Maven installed, Bashrc file updated at $current_datetime." | tee -a "$log_file"
