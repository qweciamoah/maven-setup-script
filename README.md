
 # Maven Installation Script with Logging

## Introduction
This Bash script automates the installation process of Apache Maven on an Ubuntu system. It also updates the system packages, installs Java Development Kit (JDK), and configures environment variables. Additionally, it logs each step and any encountered errors to a specified log file for troubleshooting purposes.

## Script Overview
- **Script Name**: `maven_installation.sh`
- **Author**: [qweciamoah]
- **Version**: 1.0

## Prerequisites
Before running the script, ensure the following prerequisites are met:
- Ubuntu operating system
- Internet connectivity for package downloads

## Installation Steps
1. **Download the Script**: Clone or download the script from the repository.

2. **Make it Executable**: Ensure the script is executable by running the following command:
    ```bash
    chmod +x maven_installation.sh
    ```

3. **Run the Script**: Execute the script with administrative privileges using the following command:
    ```bash
    sudo ./maven_installation.sh
    ```

4. **Review the Log File**: After script execution, review the log file (`maven-log.txt`) located at `/home/ubuntu/` for any errors or status updates.

## Detailed Explanation
The script performs the following steps:

1. **Log File Initialization**:
    - Checks if the log file (`maven-log.txt`) exists. If not, it creates one at `/home/ubuntu/`.

2. **Hostname Configuration**:
    - Sets the hostname of the system to "maven".

3. **System Update and Upgrade**:
    - Updates the package repositories and upgrades installed packages on the system.

4. **Dependency Installation**:
    - Installs default JDK and Git packages required for Maven.

5. **Maven Installation**:
    - Downloads Apache Maven (version 3.9.6) binaries, extracts them, and moves them to `/opt/maven`.

6. **Environment Variable Configuration**:
    - Adds Maven's bin directory to the system's PATH variable by appending to the `.bashrc` file of the `ubuntu` user.

7. **Logging**:
    - Logs each step and any encountered errors or status updates to the log file.

## Notes
- Ensure internet connectivity during script execution for package downloads.
- Review the log file for detailed information on the installation process.
- For troubleshooting or feedback, refer to the log file or contact [provide contact information or link to the repository].

## Disclaimer
This script is provided as-is without any warranties. Use it at your own risk. Always review the script before execution to ensure it meets your requirements and doesn't pose any security risks.

Happy coding with Maven! 🚀
