# Slack Notification Service's notes

Notes about the integration with Slack for notifications

## Links and references

- <https://community.home-assistant.io/t/how-to-get-actionable-notifications-using-slack/145035>
- <https://api.slack.com/reference/messaging/payload>
- <https://api.slack.com/messaging/sending>
- <https://github.com/mikegrb/slackwatch>
- <https://www.fullstackpython.com/blog/build-first-slack-bot-python.html>
- <https://medium.com/alex-attia-blog/build-a-first-simple-slack-bot-with-python-5392ef359835>

## Simple message format

```json
{
    "message": "Message text",
    "target": ["#alerts"],
    "data": {}
}
```

## Payload used on the automations for EmonTx watchdog

```yaml
message: ''
target:
- "#alerts"
data:
  attachments:
  - color: "#FF0000"
    title: Sensor failed to update
    text: Sensor EmonTx A has not updated in a while
```

## More complex message format

```json
{
    "message": "testing",
    "target": "#alerts",
    "data": {
        "attachments": [{
                "color": "#36a64f",
                "pretext": "Optional text that appears above the attachment block",
                "title": "Slack API Documentation",
                "title_link": "https://api.slack.com/",
                "text": "Optional text that appears within the attachment",
                "fields": [{
                        "title": "Priority",
                        "value": "High",
                        "short": false
                    }
                ]
            }
        ]
    }
}
```
