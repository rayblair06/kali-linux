# Kali Linux

This is a WIP Docker image for Kali Linux. I'm currently using this for pen-testing with services such as TryHackMe, HackTheBox, etc.

Files/folders placed in `{projectFolder}/home/` will be mounted in container at `/home/external`. I'm using this to store my `.ovpn` configs but any files you want in `Kali` will be mounted here.

## Commands
```
make build      # Build Docker image
make start      # Start Docker image
make bash       # Enter into bash of container
```