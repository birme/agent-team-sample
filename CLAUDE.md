# Sample Agent Team

This is a sample agent team repository for testing the OSC Agent Tasks functionality.

## What This Repo Does

This repo contains simple tasks that a Claude agent can execute autonomously:
- Generate daily reports from data files
- Run health checks against configured endpoints
- Summarize and organize notes

## Project Structure

- `data/` - Sample data files for processing
- `reports/` - Generated reports (committed by agent)
- `scripts/` - Utility scripts
- `notes/` - Unstructured notes for the agent to organize

## Agent Instructions

When triggered as a scheduled task:
1. Read the prompt provided in the task configuration
2. Execute the requested work
3. Commit results to this repository
4. Push changes

## Environment Variables

The following can be configured via the OSC parameter store:
- `REPORT_FORMAT` - Output format: `markdown` (default) or `json`
- `HEALTH_CHECK_URL` - URL to check (default: `https://httpbin.org/status/200`)
- `SUMMARY_MAX_WORDS` - Maximum words in summaries (default: `200`)
