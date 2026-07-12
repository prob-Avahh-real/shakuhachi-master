#!/usr/bin/env bash
set -euo pipefail;cd "$(dirname "$0")"
echo "🎋 尺八高手 · http://localhost:${PORT:-8888}"
python3 -m http.server "${PORT:-8888}" --bind 0.0.0.0
