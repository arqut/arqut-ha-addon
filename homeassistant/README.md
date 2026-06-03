# Arqut Integration for Home Assistant

A complete integration suite for connecting Home Assistant with Arqut's notification and event management system.

## 📚 Documentation

| Guide | Description |
|-------|-------------|
| [**Blueprints**][blueprint] | Import ready-to-use automation blueprints for Arqut sensors and events |
| [**REST Commands**][rest_command] | Configure REST commands to interact with Arqut API |
| [**Sample Scripts**][sample_scripts] | Ready-to-use  scripts for common Arqut scenarios |

[blueprint]: https://github.com/arqut/arqut-ha-addon/blob/main/homeassistant/BLUEPRINT.md
[rest_command]: https://github.com/arqut/arqut-ha-addon/blob/main/homeassistant/REST_COMMAND.md
[sample_scripts]: https://github.com/arqut/arqut-ha-addon/blob/main/homeassistant/SAMPLE_SCRIPTS.md

---

## 📖 Available Resources

### Blueprints
- **Arqut Sensor Notification** - Send notifications to multiple Arqut users
- **Create Arqut Event via MQTT** - Create events with cooldown and time restrictions

### REST Commands
- **`arqut_send_notification`** - Send push notifications to one or more Arqut app users
- **`arqut_edge_create_event`** - Create an event log via the Arqut Edge service

### Scripts
- **Create Arqut Edge Event Log via MQTT** - Publish event logs directly to the MQTT broker
- **Create Arqut Edge Event Log via REST Command** - Create event logs using the REST command integration
- **Send Notification to Arqut App** - Send push notifications to one or more Arqut users

---

## 🔧 Requirements

- Home Assistant 2023.8 or newer
- Arqut API access credentials
- For MQTT features: Configured MQTT broker

---

## 🤝 Support

- **Issues & Feature Requests**: [GitHub Issues](https://github.com/arqut/arqut-ha-addon/issues)
- **Discussions**: [GitHub Discussions](https://github.com/arqut/arqut-ha-addon/discussions)
