# XS3 Harness Kit — AI-Native Workshop

A **topic-agnostic** harness that turns GitHub Copilot into a **facilitator**, guiding a
team through the full SDLC. Every agent file is written in **XS3** (a labeled directed-graph
notation), so the machinery reads as opaque instruction strings rather than plain prose.
Built to score the rubric's **Harness quality** directly.

> **XS3 notation reference:** https://abstractdriven.com/llms-language.txt

## Two-layer architecture
- **Machinery (never changes)** — `AGENTS.md` + `.github/` + `agents/` + `prompts/`:
  the facilitation protocol, stages, working agreements, token discipline, traceability.
  Contains **no project specifics**.
- **Topic layer (swap to change the product)** — `docs/product-brief.md`: the scope,
  features, and tech stack of what you're building. Ships as an **empty skeleton**; the
  harness fills it via an interview at kickoff.

## Contents
```
AGENTS.md                        # XS3 brain: rules + facilitation protocol (Copilot CLI reads this)
.github/copilot-instructions.md  # thin XS3 layer for VS Code Agent mode; defers to AGENTS.md
.github/prompts/start-workshop.prompt.md  # VS Code slash command: /start-workshop
agents/ba.agent.md               # BA persona  → user stories (+ leads brief intake)
agents/developer.agent.md        # Dev persona → architecture, dev-spec, code
agents/test.agent.md             # QC persona  → test strategy/cases + token-log scribe
prompts/run-workshop.md          # paste-in kickoff prompt (fallback)
start-workshop.ps1               # CLI launcher: opens Copilot and fires the trigger
docs/product-brief.md            # ← TOPIC LAYER: empty skeleton, filled by intake
docs/token-log.md                # token-log seed (method + present-story shape)
```

## Prerequisites (once per machine)
- **Authenticate the CLI:** run `copilot`; sign in with an account holding a Copilot
  Business license and available credits.
- **Pick a low-cost model:** confirm `~/.copilot/settings.json` has
  `"model": "gpt-5.6-luna"` (far cheaper per request than Sol). Switch mid-session with `/model`.

## Day-of setup checklist

**1. Create the project repo (~1 min)**
- On GitHub, open this template repo and click **"Use this template"** to create the team's repo.
- **Clone it** to the mob machine and `cd` into it.
- ⚠️ Keep the repo **standalone** — not nested inside another git repository. A nested repo
  makes Copilot walk up to the outer git root and scan unrelated files, wasting tokens.

**2. Launch the harness**
- **CLI:** run `copilot` in the repo, then type **`start-workshop`**
  (or just run `./start-workshop.ps1`, which opens Copilot and fires the trigger for you).
- **VS Code (Agent mode):** type **`/start-workshop`** in the Copilot Chat box.

**3. Brief intake (the skeleton is empty by design)**
- The agent detects the incomplete brief and **interviews the mob**, one field at a time:
  `topic · problem · target-users · 3 MVP features · tech-stack · success-criteria · out-of-scope`.
- Answer each prompt; it writes the answers into `docs/product-brief.md`, the mob confirms, done.
- *Shortcut:* fill `docs/product-brief.md` before the event to skip intake entirely.

**4. Run the SDLC (type `next-stage` to advance)**
- The facilitator walks the stages:
  **requirements (BA) → design → task-breakdown → build (Dev + Test) → test-pass → polish/demo**.
- After each artifact: **review → `git commit` → add one token-log line → type `next-stage`**.

## Triggers
| Type | When |
|---|---|
| **`start-workshop`** | begin the day |
| **`next-stage`** | advance after each committed artifact |
| **`continue`** | resume after a break or interruption |

## Scoring tips
- In the demo, show the **real XS3 agent files** and say "the BA agent produced the stories,
  the Test agent produced the cases."
- Keep a running **token log** (`docs/token-log.md`): the QC scribes one concrete number plus
  one concrete optimization to present.
- **Reference** rules from the workshop's `awesome-agents/` repo when useful — don't copy them
  in (saves tokens).
- Prefer a **low-cost model** (e.g. Luna) to cut AI credits for the same artifacts.
