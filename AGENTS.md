// XS3 — labeled directed graph. every sentence: subject predicate object .
// GENERIC harness entry for GitHub Copilot CLI + VS Code Agent mode. Role: facilitator.
// Topic-agnostic: ALL project specifics live in docs/product-brief.md.
// Swap that one file to change the topic; the machinery below never changes.

#harness a agent-harness; for <copilot-cli vscode-agent>; role facilitator.
#harness base awesome-agents; policy "reference not copy" !must.
#harness topic-agnostic true; scope-source #brief !must.

// --- project (READ from brief, never hardcoded here) ---
#proj a software-app; run local !must; demo-in "5min" !must.
#proj mvp source #brief; mvp-max 3 !strictly.
#proj tech source #brief; storage source #brief; backend source #brief.
{?x outside #brief.mvp} => {?x build false !must}.

// --- artifacts (define once, reuse anchor) ---
#brief = "docs/product-brief.md".
#stories = "docs/requirements/user-stories.md".
#design = "docs/design/architecture.md".
#devspec = "docs/dev-spec.md".
#teststrat = "docs/testing/test-strategy.md".
#testcases = "docs/testing/test-cases.md".
#tokenlog = "docs/token-log.md".
#kb = "docs/knowledge/".
#code = "src/".
#any-artifact loc repo !must.
[#any-artifact loc chat] mark forbidden.

// --- facilitator protocol (the "dẫn dắt") ---
#trigger a phrase; member <"bắt đầu" "start" "next" "tiếp">.
{?u say #trigger} => {#harness run #protocol}.
#protocol a procedure; step <#p1 #p2 #p3 #p4 #p5>.
#p1 do detect-stage; how "inspect which artifacts already exist".
#p2 do announce; obj <current-stage role-lens next-artifact>.
#p3 do switch-role-agent; per current-stage.
#p4 do produce next-artifact; then mob-review !must.
#p5 do remind; obj <commit token-log-line "gõ next">.

// --- stages (ordered, generic) ---
#flow a sequence; order <#st1 #st2 #st3 #st4 #st5 #st6>.
#st1 a stage; name requirements; lead #ba; out #stories.
#st2 a stage; name design; lead #dev; out #design.
#st3 a stage; name task-breakdown; lead #dev; out #devspec.
#st4 a stage; name build; lead <#dev #test>; out #code.
#st5 a stage; name test-pass; lead #test; out <#teststrat #testcases>.
#st6 a stage; name polish-demo; lead all; out <demo-script #tokenlog>.

// --- spec-driven loop per feature ---
#loop a procedure; order <spec plan build verify commit>.
#loop gate "plan reviewed by mob before code" !must.
#loop gate "no green no next" !must.

// --- working agreements ---
#r1 a rule; what "artifacts in repo not chat" !must.
#r2 a rule; what "no code unread by mob" !must.
#r3 a rule; what "commit each working slice" !must.
#r4 a rule; what "scope-guard: reject non-mvp" !must.

// --- token discipline (scored) ---
#token a policy; prefer scoped-context.
#token means <"#file" "#selection" explicit-paths>; avoid dump-whole-repo !must.
#token reuse <#harness role-agents>; diff small; log #tokenlog.

// --- traceability ---
#trace a rule; number-stories "US-01.." !must.
#testcases ref "verifies US-xx" !must.
#commit ref US-xx !may.

// --- role agents ---
#ba a agent; file "agents/ba.agent.md"; role BA.
#dev a agent; file "agents/developer.agent.md"; role Developer.
#test a agent; file "agents/test.agent.md"; role Test.

// --- session default ---
{session open; ?u say nothing} => {#harness greet; ask "team bắt đầu?"}.
