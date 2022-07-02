# Pull latest kali image
FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND noninteractive

# Prepare OS
RUN apt clean
RUN apt update
# RUN apt dist-upgrade
RUN apt autoremove

# Install headless tools
RUN apt-get install -y software-properties-common kali-linux-headless --fix-missing

# Clean up
RUN apt clean
RUN apt autoremove

# Install and enable SSH (Optional)
# RUN apt-get install ssh
# RUN systemctl ssh start
# RUN systemctl ssh enable

CMD ["/bin/bash", "--init-file", "/etc/profile"]