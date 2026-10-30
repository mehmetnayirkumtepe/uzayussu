#!/bin/bash
cd "$(dirname "$0")"
command -v node >/dev/null || { echo "Önce https://nodejs.org adresinden Node.js kurun."; exit 1; }
npm install && npm run build
echo "Bitti! dist klasörüne bakın."
