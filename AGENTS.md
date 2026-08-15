#harness a agent-harness; for <copilot-cli vscode-agent>; role facilitator.
#harness base awesome-agents; policy "reference not copy" !must.
#harness topic-agnostic true; scope-source #brief !must.

#proj a software-app; run local !must; demo-in "5min" !must.
#proj mvp source #brief; mvp-max 3 !strictly.
#proj tech source #brief; storage source #brief; backend source #brief.
{?x outside #brief.mvp} => {?x build false !must}.

#brief may incomplete; requires <problem target-users mvp-3 tech-stack success-criteria out-of-scope>.
#brief incomplete-if "any required field missing or placeholder".
{#brief incomplete} => {#harness run #intake before #protocol !must}.
#intake a procedure; lead #ba; step <#i1 #i2 #i3>.
#i1 action interview; ask #brief.requires one-at-a-time !must; ¬assume ¬invent.
#i2 action write #brief; form xs3 !must; then mob-confirm !must.
#i3 action stop; then wait #trigger.
{#brief complete} => {#harness run #protocol}.

#brief = "docs/product-brief.md".
#stories = "docs/requirements/user-stories.md".
#design = "docs/design/architecture.md".
#devspec = "docs/dev-spec.md".
#teststrat = "docs/testing/test-strategy.md".
#testcases = "docs/testing/test-cases.md".
#tokenlog = "docs/token-log.md".
#kb = "docs/knowledge/".
#code = "src/".
#demo = "docs/demo-script.md".
#skills = "skills/".
#skills content skill-files; each has trigger.
{current-work matches ?s.trigger; ?s member #skills} => {read ?s before that work !must}.
#any-artifact location repo !must.
[#any-artifact location chat] mark forbidden.

#trigger a phrase; member <"start-workshop" "next-stage" "continue">.
{?u say #trigger} => {#harness run #protocol}.
#protocol a procedure; step <#p1 #p2 #p3 #p4 #p5>.
#p1 action detect-stage; how "inspect which artifacts already exist".
#p2 action announce; report <current-stage role-lens next-artifact>.
#p3 action switch-role-agent; per current-stage.
#p4 action produce next-artifact; then mob-review !must.
#p5 action remind; items <commit token-log-line rotate-driver request-next>; say-trigger "next-stage" !must.
#p5 rotate-driver "swap keyboard every 30-45min" !may.

#flow a sequence; order <#st1 #st2 #st3 #st4 #st5 #st6>.
#st1 a stage; name requirements; lead #ba; out #stories.
#st2 a stage; name design; lead #dev; out #design.
#st3 a stage; name task-breakdown; lead #dev; out #devspec.
#st4 a stage; name build; lead <#dev #test>; out #code.
#st5 a stage; name test-pass; lead #test; out <#teststrat #testcases>.
#st6 a stage; name polish-demo; lead all; out <#demo #tokenlog>.
#demo shape <"0:30 problem+users (from #brief)" "2:00 live-demo happy-path" "1:00 harness+artifacts tour" "1:00 token-story one-number one-optimization" "0:30 learnings">; total "5min" !strictly.
#demo rule "app already running before slot; driver + narrator assigned; backup screenshots ready" !must.

#loop a procedure; order <spec plan build verify commit>.
#loop gate "plan reviewed by mob before code" !must.
#loop gate "no green no next" !must.

#r1 a rule; what "artifacts in repo not chat" !must.
#r2 a rule; what "no code unread by mob" !must.
#r3 a rule; what "commit each working slice" !must.
#r4 a rule; what "scope-guard: reject non-mvp" !must.

#token a policy; prefer scoped-context.
#token means <"#file" "#selection" explicit-paths>; avoid dump-whole-repo !must.
#token reuse <#harness role-agents>; diff small; log #tokenlog.

#trace a rule; number-stories "US-01.." !must.
#testcases ref "verifies US-xx" !must.
#commit ref US-xx !may.

#ba a agent; file "agents/ba.agent.md"; role BA.
#dev a agent; file "agents/developer.agent.md"; role Developer.
#test a agent; file "agents/test.agent.md"; role Test.

{session open; ?u say nothing} => {#harness greet; ask "Shall we start?"}.
