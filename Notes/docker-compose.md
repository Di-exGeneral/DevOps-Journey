# Docker-compose file
A file (more like a script) responsible for staring and stopping multiple containers at once

### SYNTAX AND KEYS

```bash
services:
  service-name: example      # can be any name
    image: nginx             # get's the image from docker hub
    build: container-name    # build using the locally defined image (Dockerfile)
    ports:
      - "port-number"        # assigns a specific port to a container
    volume:
      - "/host:/container"   # creates a redundant file for data on both the host and container 
    network:                 # create anetwork for containers
    environment:             # 

```


### Network
Creates a network for containers
```bash
networks:
  network-name:        # you choose this name
    driver: bridge     # network type, default is bridge
    external: false    # true if the network was created outside Compose
    name: my-network   # custom name for the network on the host
    attachable: true   # allows standalone containers to join this network
    internal: false    # true = no external internet access for this network
    ipam:              # IP address management, rarely needed
      config:
        - subnet: 172.20.0.0/16
```



