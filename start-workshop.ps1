#!/usr/bin/env pwsh
# Launcher: open Copilot CLI in this repo and auto-fire the facilitator trigger.
# Extra flags pass through, e.g.  ./start-workshop.ps1 --allow-all-tools
copilot -i "start" @args
