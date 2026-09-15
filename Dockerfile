FROM mcr.microsoft.com/devcontainers/java:1-21-bookworm

USER root

RUN apt-get update && \
    apt-get install -y \
        xvfb \
        fluxbox \
        x11vnc \
        novnc \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER vscode

RUN chmod +x /workspaces/Karel-The-Robot/scripts/start-display.sh
