# Feature Ideas

## Agent Tasks Improvements
- Support for task dependencies (run task B after task A completes)
- Webhook triggers in addition to cron
- Task output artifacts (attach files to run results)
- Cost estimation per task run

## Testing Ideas
- Smoke test: agent creates a file, verifies it exists
- Integration test: agent reads data, generates report, commits
- Failure test: agent handles missing config gracefully
- Concurrent test: two tasks triggered simultaneously
