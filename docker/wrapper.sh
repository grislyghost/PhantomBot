#!/usr/bin/env bash
set -euo pipefail

# map old style envs (APIOAUTH, USER, etc) → PHANTOMBOT_*
for key in APIOAUTH BASEPORT CHANNEL OWNER MSGLIMIT30 MUSICENABLE OAUTH PANELPASSWORD PANELUSER USEHTTPS USER WEBAUTH WEBAUTHRO WEBENABLE WHISPERLIMIT60 YTAUTH YTAUTHRO; do
  v="$(printenv "$key" || true)"
  if [ -n "${v}" ]; then
    export "PHANTOMBOT_${key}=${v}"
  fi
done

exec /opt/PhantomBot/launch-service.sh
