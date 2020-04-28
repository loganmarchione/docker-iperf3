# docker-iperf3

[![Build Status](https://travis-ci.org/loganmarchione/docker-iperf3.svg?branch=master)](https://travis-ci.org/loganmarchione/docker-iperf3)

## Overview
Runs an iPerf3 server in Docker

| Property    | Value                                            |
|-------------|--------------------------------------------------|
| Base        | [Alpine Linux](https://hub.docker.com/_/alpine/) |
| Init system | N/A                                              |

## Environment variables
N/A

## Ports
| Port on host              | Port in container | Comments            |
|---------------------------|-------------------|---------------------|
| Choose at your discretion | 5201              | iPerf3 server       |

## Volumes
N/A

## Example
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

#TODO
- [ ] Add image based on Ubuntu or Debian
