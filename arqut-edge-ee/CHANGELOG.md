# Changelog

All notable changes to this add-on will be documented in this file.

## [0.12.0] - 2026-07-03

### Features
- add option to require authentication for services
- add retry logic for proxy service binding when TUN device is unavailable

## [0.11.0] - 2026-06-22

### Features
- discover local IP cameras (ONVIF / RTSP / HTTP probes)
- send event notifications via the cloud's edge-dedicated endpoint (server resolves recipients)

## [0.10.0] - 2026-06-04

### Features
- test MQTT broker connection from settings

## [0.9.0] - 2026-05-27

### Features
- add camera streams and stream groups
- add access log for tunnel/proxy service/camera stream

### Changed
- improve UI: filter, pagination

## [0.8.1] - 2026-04-16

### Features
- add MQTT client
- create event from MQTT topic: arqut/events

## [0.7.1] - 2024-03-31

### Features
- add events log
- add local service discovering
- add option to get/change Edge API key from ui
- support proxy secure (https) services

### Changed
- only allow owner to access Terminal & Settings pages

## [0.6.0] - 2026-02-26

### Features
- add path to service

## [0.5.0] - 2026-01-19

### Features
- initial release of the add-on
- core functionality implemented