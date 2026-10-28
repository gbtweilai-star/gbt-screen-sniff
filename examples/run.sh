#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_screen_sniff info
PYTHONPATH=src python -m gbt_screen_sniff check --payload '{}'
PYTHONPATH=src python -m gbt_screen_sniff run   --payload '{}'
