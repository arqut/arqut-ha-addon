# Changelog
All notable changes to this project will be documented in this file.

## [0.14.0] - 2026-10-13
### Security
- limit the dashboard and the admin API to the edge owner and the admins the owner chooses. Before, anyone who could reach port 3030 could read the owner's cloud API key from `GET /api/config`, pair the edge to another account, unpair it, and use the admin API and the web terminal with any edge login
- never send the cloud API key from `GET /api/config`, and send the edge API key only to the owner
- an edge that is already paired can only be paired again by its owner
- refuse dashboard requests that arrive through a WireGuard tunnel; the app still opens the dashboard as a service
- stop logging sign-in tokens on the auth WebSocket, where a logged cloud access token could act as its user across the whole cloud account

### Features
- add an edge admin role. The Users page shows each user's access and lets the owner make a user an admin or remove that; the Users page, the terminal, unpairing, updates and the settings writes stay owner-only
- look up the owner of the cloud key at startup, so an edge set up with `ARQUT_API_KEY` knows its owner

### Fixes
- read the edge JWT secret on each use, so the dashboard accepts sign-ins after an unpair and a new pairing without restarting the edge
- write user rows one column at a time, so a sign-in can no longer write back an admin flag or setting the owner has just changed

### Upgrade notes
- everyone signs in again once: sessions from earlier versions are refused
- offline passwords are cleared on upgrade, because earlier versions let any signed-in user set them. The owner sets them again from the Users page
- users other than the owner lose dashboard access until the owner makes them an admin on the Users page

## [0.13.1] - 2026-09-09
### Fixes
- surface an event notification that reached the site owner but none of its shared users; the cloud reported that as a clean success, so a fan-out failing for every share left no trace
- read the notification response from either cloud version. Older deployments answer with a scalar, which the typed decode rejected outright, so against a cloud without the paired server change every event logged a failure for a notification that had in fact been delivered
- report the version the binary was actually built as. The release version is injected at build time into `main.Version`, but the code read a `const` of the same name in lowercase — and `-ldflags -X` cannot write to a const, so every build since 0.7.1 reported 0.7.1

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
