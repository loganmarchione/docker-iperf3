# docker-iperf3

[![Build Status](https://travis-ci.org/loganmarchione/docker-iperf3.svg?branch=master)](https://travis-ci.org/loganmarchione/docker-iperf3)

Runs an iPerf3 server in Docker
  - Source code is on [GitHub](https://github.com/loganmarchione/docker-iperf3)
  - Docker container is on [Docker Hub](https://hub.docker.com/r/loganmarchione/docker-iperf3)
  - Image base: [Alpine Linux](https://hub.docker.com/_/alpine/)
  - Init system: N/A
  - Application: [iPerf3](https://iperf.fr/)

## Docker image information

### Docker image tags
  - `latest-alpine`: Latest version, based on Alpine
  - `X.X.X-alpine`: [Semantic version](https://semver.org/), based on Alpine (use if you want to stick on a specific version)

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
    image: loganmarchione/docker-iperf3:latest-alpine

networks:
  iperf3:
```

## TODO
- [ ] Add image based on Ubuntu or Debian
