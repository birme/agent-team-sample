#!/bin/bash
# Simple health check script that an agent task might reference
URL="${HEALTH_CHECK_URL:-https://httpbin.org/status/200}"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL" 2>/dev/null)

echo "Health check: $URL"
echo "Status: $STATUS"
echo "Time: $(date -u +%Y-%m-%dT%H:%M:%SZ)"

if [ "$STATUS" = "200" ]; then
  echo "Result: HEALTHY"
  exit 0
else
  echo "Result: UNHEALTHY"
  exit 1
fi
