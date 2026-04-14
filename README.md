# Agent Team Sample

Sample repository for testing [OSC Agent Tasks](https://docs.osaas.io) - scheduled AI agent execution on Open Source Cloud.

## Quick Start

1. Set up your agent credentials on OSC:
   ```
   PUT /myagents/setup
   {"credentialType": "anthropicapikey", "credential": "sk-ant-..."}
   ```

2. Create a scheduled task:
   ```
   POST /myagents/tasks
   {
     "name": "Daily Report",
     "prompt": "Read data/services.json and data/metrics.json. Generate a daily status report in reports/ with today's date as filename. Include service health, tenant metrics, and any anomalies. Commit and push.",
     "cronExpression": "0 9 * * 1-5",
     "enabled": true
   }
   ```

3. Or trigger manually:
   ```
   POST /myagents/tasks/{taskId}/run
   ```

## Sample Task Prompts

### Daily Status Report
```
Read data/services.json and data/metrics.json. Generate a concise daily status report as reports/YYYY-MM-DD.md. Highlight any services with non-healthy status and any unusual metrics. Commit and push the report.
```

### Organize Notes
```
Read all files in notes/. Create a summary in reports/notes-summary.md that categorizes items by topic (action items, ideas, decisions). Commit and push.
```

### Health Check
```
Run scripts/check-health.sh and append the result to reports/health-log.md. If the check fails, create a GitHub issue. Commit and push.
```
