# Home Assistant Add-on: Arqut Edge EE Application

This add-on provides a simple and secure tunnel service, allowing you to publish internal network services and access them remotely over the Internet. With a one-click installation and a seamless integration into Home Assistant, you can easily make your local services or IoT devices accessible from anywhere — no public IP or domain required.

## Installation

The installation of this add-on is pretty straightforward and not different in
comparison to installing any other Home Assistant add-on.

1. Click the Home Assistant My button below to open the add-on on your Home
   Assistant instance.

   [![Open this add-on in your Home Assistant instance.][addon-badge]][addon]

1. Click the "Install" button to install the add-on.
1. Check the logs of the "Arqut Edge EE Application" to see if everything went well.
1. Click the "OPEN WEB UI" button, and follow the initial wizard.
1. Use Arqut Mobile App to scan the QR-code to setup.
1. After complete the first tunnel to your Arqut Edge application is created.
1. Ready to go!

## Trusted proxies

Tunnelled requests reach Home Assistant through the add-on, so Home Assistant
sees the add-on's address rather than the visitor's. It rejects those requests
until it knows the add-on is a proxy it can trust, so the add-on registers
itself on startup. There is nothing to configure.

How that registration is applied depends on your Home Assistant version:

| Version | Where it lands | What you will see |
|---------|----------------|-------------------|
| 2026.8 and later | **Settings > System > Network** | Home Assistant restarts once to apply it |
| Up to 2026.7 | `configuration.yaml` | You need to restart Home Assistant yourself |

On 2026.8 and later, Home Assistant treats a network change as a trial: it
applies the change, restarts, and undoes it a few minutes later unless the
change is confirmed. The add-on confirms its own change after the restart, so
this resolves on its own — but it does mean the tunnel can take a couple of
minutes to settle after the add-on first starts.

If the tunnel is not working, open **Settings > System > Network** and check
that **Trust X-Forwarded-For** is on and that your local subnets are listed
under **Trusted proxies**. The add-on log records what it applied.

## Resources

| Guide | Description |
|-------|-------------|
| [**Blueprints**][blueprint] | Import ready-to-use automation blueprints for Arqut sensors and events |
| [**REST Commands**][rest_command] | Configure REST commands to interact with Arqut API |
| [**Sample Scripts**][sample_scripts] | Ready-to-use  scripts for common Arqut scenarios |

## Support

Got questions? Please [open an issue on GitHub][issue].

Thank you for using the Arqut Edge add-on!

[addon-badge]: https://my.home-assistant.io/badges/supervisor_addon.svg
[addon]: https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Farqut%2Farqut-ha-addon
[blueprint]: https://github.com/arqut/arqut-ha-addon/blob/main/homeassistant/BLUEPRINT.md
[rest_command]: https://github.com/arqut/arqut-ha-addon/blob/main/homeassistant/REST_COMMAND.md
[sample_scripts]: https://github.com/arqut/arqut-ha-addon/blob/main/homeassistant/SAMPLE_SCRIPTS.md
[issue]: https://github.com/arqut/arqut-ha-addon/issues
