<!-- [![Farsi](https://img.shields.io/badge/Language-Fa-brown.svg?style=flat-square)](https://github.com/younesmod/shell-boost/blob/main/README.fa.md) -->
<!-- [![MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://github.com/younesmod/shell-boost/blob/main/LICENSE) -->
# 🚀 Shell Productivity Boost
<div align="center">

<!-- ![Linux](https://img.shields.io/badge/Platform-Linux-blue.svg) -->
[![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![ZSH](https://img.shields.io/badge/ZSH-F15A24?style=for-the-badge&logo=zsh&logoColor=white)](https://ohmyz.sh/)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)](https://www.linux.org/)
[![BSD](https://img.shields.io/badge/BSD-AB2B28?style=for-the-badge&logo=bsd&logoColor=white)](https://en.wikipedia.org/wiki/Berkeley_Software_Distribution)
[![UNIX](https://img.shields.io/badge/UNIX-FFF?style=for-the-badge)](https://unix.org/)

A collection of essential aliases and functions to supercharge your shell experience
</div>

## <b>Table Of Content</b>
- Project Overview
- Quick Start
- Usage
- Features
- Project Structure

### <b>🎯 Project Overview</b>

This project provides a comprehensive set of shell aliases and functions that enhance productivity and simplify common tasks in bash and zsh environments. It automatically detects your package manager and provides unified commands across different Linux distributions.

Key Features:

   - Package Manager Agnostic: Works with apt, dnf, yum, pacman, zypper, apk

   - System Management: Unified update, upgrade, and cleanup commands

   - Navigation Boosters: Quick directory navigation and file operations

   - Safety Features: Interactive file operations to prevent accidents

   - Development Tools: Git shortcuts and development utilities

   - Network & Monitoring: Quick system monitoring and network tools


### <b>🚀 Quick Start</b>

1. Clone the Repository
```bash
git clone https://github.com/younesmod/shell-boost.git
cd shell-boost
```

2. Make sh files executable
```bash
chmod +x install-bashedit.sh    # for bash
# OR
chmod +x install-zshedit.sh     # for zsh
```

3. Run the installer
```bash
./install-bashedit.sh    # for bash
# OR
./install-zshedit.sh     # for zsh
```

4. Reload your shell
```bash
source ~/.bashrc   # for bash
# OR
source ~/.zshrc    # for zsh
```

### <b>🎮 Usage</b>
System Management:
```bash
sysup      # Auto-detect package manager and update system
pkgclean   # Clean up package cache for your distro
pkginst vim # Install packages using detected package manager
pkgsearch python  # Search for packages
```
File Operations:
```bash
ll        # Detailed file listing
..        # Go up one directory
...       # Go up two directories
backup file.txt  # Create backup of file
extract archive.zip  # Extract any archive format
```
Development:
```bash
gs        # git status
ga .      # git add all
gc "message"  # git commit
mkcd new_project  # Create and enter directory
```
System Monitoring:
```bash
cpu       # Show processes by CPU usage
mem       # Show processes by memory usage
ports     # Show listening ports
myip      # Get public IP address
```

### <b>✨ Features</b>

Package Management:

   - sysup - Universal system update that auto-detects your package manager

   - pkgclean - Clean package cache and remove unnecessary packages

   - pkginst - Install packages using the correct package manager

   - pkgsearch - Search for packages across different package managers

File & Navigation:

   - Quick directory navigation with .., ..., ....

   - Enhanced ls commands with ll, la, l

   - Safety aliases for rm, cp, mv with interactive prompts

   - Archive extraction function for all common formats

Development & Git:

   - Short Git commands: gs, ga, gc, gp, gl

   - Quick shell editing: editbash, reloadbash

   - Directory creation with mkcd function

System & Network:

   - Process monitoring with cpu, mem

   - Network tools: myip, ping, ports

   - Service management aliases for systemd

   - Weather and calculator functions

### <b>📁 Project Structure</b>
```text
ansible-devops-foundation/
├── Shell-Config/
│   ├── bashedit    # All alias and functions for .bashrc
│   └── zshedit     # All alias and functions for .zshrc
├── Shell-Framework/
│   ├── install-oh-my-bash.sh   # An easy way to install Oh-My-Bash
│   └── install-oh-my-zsh.sh    # An easy way to install Oh-My-ZSH
├── install-bashedit.sh     # Script to install ./Shell-Config/bashedit
├── install-zshedit.sh      # Script to install ./Shell-Config/zshedit
├── LICENSE     # License file
└── README.md   # Readme file
```
<div align="center">
Boost Your Shell Productivity! 🚀
</div>