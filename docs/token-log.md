#tokenlog a token-log; goal "value-per-token"; deliver <one-number one-optimization> for demo.

#tokenlog method < #m1 #m2 #m3 #m4 >.
#m1 a method; do "count requests per feature".
#m2 a method; prefer scoped-context <"#file" "#selection" explicit-paths>; avoid whole-repo-dump !must.
#m3 a method; reuse <harness-instructions role-agents>; avoid re-explain-rules.
#m4 a method; diff small; commit often; then shorter-fix-prompts.

#tokenlog entries append-during-day !must; entry-shape {at time; task name; cost turns; opt applied; result outcome}.

#how-count a method; source "copilot chat: requests are countable per stage; premium-request counter in account = hard number".
#how-count do "scribe notes requests-used at end of each stage; entry per stage" !must.

#story a present-story; shape <one-number one-optimization>.
#story rule "optimization needs evidence, ¬vibes" !must.

#story option <#c1 #c2 #c3 #c4>; pick "whichever has the best real number by demo time".
#c1 a claim; what "early A/B: same question asked whole-repo-dump vs #file-scoped"; number "'Used n references' count before/after"; when "start of requirements stage"; cost "2 requests, 0 waste (variant-B output = the kept artifact)" !may.
#c1 tool copilot-cli primary; metric "file-reads shown in transcript"; hard-number "premium-request counter (github settings → copilot) or /usage if available".
#c1 variant-a prompt "Read the whole repository for context, then draft user story US-02 'drag & drop task across columns' with testable acceptance criteria, following our harness rules."; then "count file-reads in transcript (~15-25); capture".
#c1 variant-b pre "FRESH session (exit + rerun copilot, or /clear)" !must; prompt "Read ONLY docs/product-brief.md and docs/knowledge/cyber-nexus-spec.md and .github/agents/ba.agent.md — no other files — then draft user story US-02 'drag & drop task across columns' with testable acceptance criteria, following the story-shape in .github/agents/ba.agent.md."; then "transcript shows 3 file-reads; keep story → docs/requirements/user-stories.md; commit".
#c1 vscode-alt {variant-a "@workspace <same ask>"; variant-b "new chat + #file:docs/product-brief.md #file:docs/knowledge/cyber-nexus-spec.md <same ask>"; metric "'Used n references' panel"}.
#c1 compare "story quality identical (same truth-source); reads ~20 vs 3"; log-line-shape "time | A/B US-02 | X file-reads vs Y (−Z%) | quality identical | adopt scoped-context".
#c1 fallback prompt "List the 4 kanban columns with counts and accent colors"; answer-check "backlog 32 cyan / progress 5 blue / review 3 violet / done 18 mint"; note "verifiable but produces no artifact — use only if mob wants a factual A/B".
#c2 a claim; what "xs3 harness density: AGENTS.md + agents ≈ X words vs prose equivalent"; number "wc -w on files; xs3 ≈ 3-5x denser"; note "pre-built counts as optimization IF you show the number".
#c3 a claim; what "distilled spec replaced mockup exploration: bot reads 2 kb files once, zero vision, zero re-asks"; number "requests in requirements+design stages (expect ≤5)".
#c4 a claim; what "gotcha-skills prevented known failure loops"; number "reference build paid 2 debug turns on dnd toast trap; this run paid 0 (skill pre-warned)"; evidence ".github/skills/dnd-kit.skill.md trap-1".

{harness pre-built; ?t asks "where is the optimization?"} => {answer "the harness IS the optimization; prove with #c2/#c3/#c4 numbers + per-stage request counts from #how-count"}.
