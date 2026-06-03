# Sample Scripts

Ready-to-use Home Assistant scripts for common Arqut integration scenarios.

---

## Create Arqut Edge Event Log via MQTT

Create an Arqut Edge Event Log by publishing an event directly to the MQTT broker. This requires an MQTT broker (such as Mosquitto from the HA Add-on Store) and the MQTT client configured for Arqut Edge (Settings / MQTT Client).

```yaml
alias: Publish Arqut Event via MQTT
description: Publish Arqut Event via MQTT
sequence:
  - action: mqtt.publish
    metadata: {}
    data:
      evaluate_payload: false
      qos: "1"
      retain: false
      topic: "arqut/events"
      payload: |-
        {
          "title": "Test Event {{ now().strftime('%H:%M') }}",
          "description": "Send test event via MQTT - {{ now().strftime('%Y/%m/%d %H:%M') }}",
          "event_type": "test"
        }
```

---

## Create Arqut Edge Event Log with REST Command

Create an event log using the `arqut_edge_create_event` REST command. Requires the [REST Commands](https://github.com/arqut/arqut-ha-addon/blob/main/homeassistant/REST_COMMAND.md) configuration.

```yaml
alias: Create Arqut Edge Event Log with REST Command
description: Publish an event to Arqut Edge client
sequence:
  - action: rest_command.arqut_edge_create_event
    data:
      title: "Garage Door Opened"
      description: "The garage door was opened at {{ now().strftime('%I:%M %p') }}."
      event_type: "security"
      data:
        door_sensor: "garage_door"
        timestamp: "{{ now().isoformat() }}"
```

---

## Send Notification to Arqut App

Send a push notification to one or more Arqut users. Requires the [REST Commands](https://github.com/arqut/arqut-ha-addon/blob/main/homeassistant/REST_COMMAND.md) configuration.

```yaml
alias: Send Notification to Arqut App
description: Send Notification to Arqut App
sequence:
  - action: rest_command.arqut_send_notification
    data:
      to: ["user_id_1", "user_id_2"]  # Optional, defaults to your account
      title: "Motion Detected"
      body: "Motion was detected in the living room"
      action: "VIEW_EVENT"  # Optional
      data:  # Optional
        event_id: "12345"
        sensor: "living_room_motion"
```
