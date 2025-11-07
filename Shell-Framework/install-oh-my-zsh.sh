#!/bin/bash

# Oh My Zsh Installation Script with enhanced error handling
# Created by Younes Modaresian (github.com/younesmod)

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Logging functions
log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

install_oh_my_zsh() {
    log_info "Starting Oh My Zsh installation..."
    
    # Check for required commands
    if ! command -v zsh >/dev/null 2>&1; then
        log_error "zsh is not available. Please install zsh first."
        return 1
    fi

    # Method 1: Try curl
    if command -v curl >/dev/null 2>&1; then
        log_info "Attempting installation using curl..."
        if sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; then
            log_info "Oh My Zsh successfully installed using curl!"
            return 0
        else
            log_warn "curl method failed, exit code: $?"
        fi
    else
        log_warn "curl not found in PATH"
    fi

    # Method 2: Try wget
    if command -v wget >/dev/null 2>&1; then
        log_info "Attempting installation using wget..."
        if sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"; then
            log_info "Oh My Zsh successfully installed using wget!"
            return 0
        else
            log_warn "wget method failed, exit code: $?"
        fi
    else
        log_warn "wget not found in PATH"
    fi

    # If we reach here, both methods failed
    log_error "All installation methods failed."
    log_error "Please ensure you have either curl or wget installed and have internet connectivity."
    return 1
}

# Main execution
main() {
    log_info "Oh My Zsh Installer"
    log_info "This script will install Oh My Zsh using either curl or wget"
    echo
    
    # Check if we're in a terminal that supports colors
    if [ -t 1 ]; then
        read -p "Do you want to continue? [Y/n] " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Nn]$ ]]; then
            log_info "Installation cancelled."
            exit 0
        fi
    fi
    
    install_oh_my_zsh
}

# Run main function
main "$@"

# Display summary
echo ""
echo "=== Installation Complete ==="
echo "👤 Author: Younes Modaresian (github.com/younesmod)"