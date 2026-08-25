# Changelog
All notable changes to this project will be documented in this file.

## [0.13.0] - 2026-08-25
### Features
- enforce cloud-minted access conditions per request (P5)
- verify signed capability tokens offline, so access survives a cloud outage (P8a)

### Fixes
- stop trusting the client-supplied `X-Session-Service-ID` for session scope (P4/Δ2.2)
- serialize edge auth websocket writes, which could panic on concurrent writes
- apply the Home Assistant trusted proxy setting on every add-on start rather than only on the one that creates the tunnel, so a setting that was edited away or reverted is put back
- exposing Home Assistant no longer reports success for a request that failed, and no longer navigates away from the settings page

### Changed
- register the Edge as a trusted proxy through the Home Assistant API on 2026.8 and later, where the `http` integration is configured from Settings > System > Network instead of `configuration.yaml`
- show the trusted proxy instructions for the Home Assistant version actually in use, instead of always showing the `configuration.yaml` snippet

## [0.12.3] - 2026-07-29
### Features
- add Cloud settings to enable the server to send notifications to the Arqut app when the Edge goes online or offline.

## [0.12.2] - 2026-07-22
### Features
- add a unified login page with QR code, short auth token, and password login options
- exchange Cloud short auth tokens for local Edge sessions and automatically create the user when needed

### Changed
- align the login page with the Edge theme, including readable dark-mode text and transparent tab content

## [0.12.1] - 2026-07-20
### Fixes
- restart a running proxy service automatically when its local host, port, or enabled state is changed via the update API, instead of requiring a manual toggle
- disable delete button on Edge UI service

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

## [0.8.1] - 2026-04-16
### Changed
- update changelog

## [0.8.0] - 2026-04-16
### Features
- add MQTT client
- create event from MQTT topic: arqut/events

## [0.7.1] - 2026-03-31
### Changed
- regenerate go.sum to resolve checksum mismatch

## [0.7.0] - 2026-03-24
### Features
- support to serve local secure (https) service

### Changed
- confirm to reset Edge API key
- only allow owner to access Terminal & Settings pages

## [0.6.4] - 2026-03-24
### Features
- add option to get/change Edge API key from ui
- allow to set new API key

## [0.6.3] - 2026-03-23
### Features
- add events

## [0.6.2] - 2026-02-26
### Features
- add local service discovering

## [0.6.1] - 2026-02-07
### Features
- add auth middleware

## [0.6.0] - 2026-02-04
### Features
- add path to service

## [0.5.2] - 2026-01-30
### Changed
- update readme
- add intergartion ui
- add docs

## [0.5.1] - 2026-01-19
### Changed
- correct Edge CE package

## [0.5.0] - 2026-01-19
### Added
- Initial release
