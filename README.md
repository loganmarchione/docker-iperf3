# docker-iperf3

[![CI/CD](https://github.com/loganmarchione/docker-iperf3/actions/workflows/main.yml/badge.svg)](https://github.com/loganmarchione/docker-iperf3/actions/workflows/main.yml)
[![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/loganmarchione/docker-iperf3)](https://hub.docker.com/r/loganmarchione/docker-iperf3)

Runs an iPerf3 server in Docker
  - Source code: [GitHub](https://github.com/loganmarchione/docker-iperf3)
  - Docker container: [Docker Hub](https://hub.docker.com/r/loganmarchione/docker-iperf3)
  - Image base: [Alpine Linux](https://hub.docker.com/_/alpine/)
  - Init system: N/A
  - Application: [iPerf3](https://iperf.fr/)
  - Architecture: `linux/amd64,linux/arm64,linux/arm/v7`

## Explanation

  - This runs an iPerf3 server in Docker.

## Requirements
N/A

## Docker image information

### Docker image tags
  - `latest`: Latest version
  - `X.X.X`: [Semantic version](https://semver.org/) (use if you want to stick on a specific version)

### Environment variables
N/A

### Ports
| Port on host              | Port in container | Comments            |
|---------------------------|-------------------|---------------------|
| Choose at your discretion | 5201              | iPerf3 server       |

### Volumes
N/A

### Example usage
Below is an example docker-compose.yml file.
```
version: '3'
services:
  iperf3:
    container_name: iperf3
    restart: unless-stopped
    networks:
      - iperf3
    ports:
      - '5201:5201'
    image: loganmarchione/docker-iperf3:latest

networks:
  iperf3:
```

## TODO
- [x] ~~Add image based on Ubuntu or Debian~~
- [x] ~~Run the processes inside the container as a non-root user~~
