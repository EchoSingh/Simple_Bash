#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Display system information
echo -e "${BLUE}System Information${NC}"
echo -e "${GREEN}------------------${NC}"
echo -e "${YELLOW}Hostname:${NC} $(hostname)"
echo -e "${YELLOW}OS:${NC} $(lsb_release -d | awk -F"\t" '{print $2}')"
echo -e "${YELLOW}Kernel:${NC} $(uname -r)"
echo -e "${YELLOW}Uptime:${NC} $(uptime -p)"
echo -e "${YELLOW}Shell:${NC} $SHELL"

# Display memory usage
echo -e "\n${BLUE}Memory Usage${NC}"
echo -e "${GREEN}------------${NC}"
free -h

# Display disk usage
echo -e "\n${BLUE}Disk Usage${NC}"
echo -e "${GREEN}----------${NC}"
df -h /

# Display network information
echo -e "\n${BLUE}Network Information${NC}"
echo -e "${GREEN}-------------------${NC}"
ip -c a
