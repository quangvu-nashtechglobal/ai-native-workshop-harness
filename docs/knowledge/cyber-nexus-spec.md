#spec a screen-spec; app "Cyber-Nexus Sprint 42"; style <dark glassmorphism neon-glow>; distilled-from "reference build 2026-08-13".
#spec colors source #tokens !must; #tokens = "docs/knowledge/cyber-nexus-color-tokens.md".
#spec fonts <#f1 #f2>; #f1 a font; name Orbitron; for <headings logo column-titles stat-numbers>. #f2 a font; name Inter; for body.

#layout a structure; order <#sidebar #main>; #main order <#header #stats #board>.

#sidebar a region; width "~92px"; side left; items <logo nav neural-link>.
#sidebar logo "hexagon svg, cyan→violet gradient stroke, glow, cube icon inside".
#sidebar nav <Board Timeline Backlog Reports Members Settings>; icon-over-label true; active Board.
#sidebar active-style "cyan text + glow + 3px cyan bar on right edge".
#sidebar neural-link bottom; text <"NEURAL LINK" "ONLINE">; dot mint glow.

#header a region; left <title badge breadcrumb>; right <search filters group-by avatars bell create-btn>.
#header title "CYBER-NEXUS SPRINT 42"; font Orbitron.
#header badge "ACTIVE"; style "mint pill + mint dot".
#header breadcrumb "Workspace / Sprint 42 · 2 May – 15 May 2025 📅".
#header search placeholder "Search tasks, tags, or members..."; kbd "⌘K"; live-filter true.
#header group-by "Group by: Status"; behavior display-only.
#header avatars 5 + "+3"; bell dot magenta; create-btn "+ Create Task" style cyber-button-primary.

#stats a region; cards 6; card-shape {icon hexagon-outline-glow; label uppercase-small; value big-orbitron; spark svg-polyline bottom-right}.
#st1 a stat; label "Total Tasks"; val 128; note "↑ 12% vs last sprint"; hue cyan; icon cube.
#st2 a stat; label "Completion Rate"; val "67%"; note "↑ 8% vs last sprint"; hue violet; icon donut-ring-67pct.
#st3 a stat; label "Velocity"; val 89; note "Story Points"; hue cyan; icon rocket.
#st4 a stat; label "Burndown"; val 42; note "Points remaining"; hue orange; icon flame.
#st5 a stat; label "Team Capacity"; val "87%"; note "32 / 36 Points"; hue cyan; icon users.
#st6 a stat; label "Blocked Tasks"; val 7; note "↓ 2 vs last sprint"; hue magenta; icon shield.
#stats charts hand-rolled-svg !must; chart-lib forbidden.

#board a region; columns <#cb #cp #cr #cd>.
#cb a column; id backlog; label "BACKLOG"; count 32; accent cyan.
#cp a column; id progress; label "IN PROGRESS"; count 5; accent blue.
#cr a column; id review; label "IN REVIEW"; count 3; accent violet.
#cd a column; id done; label "COMPLETED"; count 18; accent mint.
#column header <label count plus-btn dots-btn>; footer "+ Add Task"; panel glassmorphism.
#column count-rule "shown = mock count + (live tasks − initial tasks)"; ¬count-rendered-cards.

#card a component; rows <r1 r2 r3 r4 r5>.
#card r1 <code menu-dots>; r2 <title priority-badge-or-check>; r3 <avatar assignee>; r4 <progress-bar pct>; r5 <tag-chips file-icon>.
#card done-variant {badge none; check mint-circle; progress mint-gradient}.
#card avatar "gradient-initials circle; ¬bitmap-photos" !must.
#card accent per-column; hover "border+glow brighten".
#priority-colors {URGENT red; HIGH orange; MED violet; LOW mint}; detail source #tokens.

#t142 a task; col backlog; code "CNX-142"; title "Implement Quantum Encryption Layer"; prio URGENT; who "Nova Kim"; pct 0; tags <quantum-core security>.
#t143 a task; col backlog; code "CNX-143"; title "Mesh Network Topology Optimization"; prio HIGH; who "Ethan Cole"; pct 15; tags <mesh-api performance>.
#t144 a task; col backlog; code "CNX-144"; title "AI Predictive Scaling Engine"; prio MED; who "Aria Singh"; pct 0; tags <ai-core infra>.
#t128 a task; col progress; code "CNX-128"; title "Refactor Core API Gateway"; prio HIGH; who "Liam Johnson"; pct 60; tags <mesh-api backend refactor>.
#t130 a task; col progress; code "CNX-130"; title "Upgrade UI to v2.0 Design System"; prio MED; who "Zara Ali"; pct 40; tags <ui-v2 design-system frontend>.
#t131 a task; col progress; code "CNX-131"; title "Integrate Real-time Telemetry Stream"; prio HIGH; who "Noah Patel"; pct 70; tags <realtime telemetry backend>.
#t117 a task; col review; code "CNX-117"; title "Smart Contract Security Audit"; prio URGENT; who "Maya Chen"; pct 90; tags <security audit blockchain>.
#t119 a task; col review; code "CNX-119"; title "Quantum Key Distribution Protocol"; prio HIGH; who "Lucas Moreau"; pct 80; tags <quantum-core protocol>.
#t120 a task; col review; code "CNX-120"; title "Data Visualization Dashboard"; prio MED; who "Emma Williams"; pct 75; tags <ui-v2 dashboard frontend>.
#t101 a task; col done; code "CNX-101"; title "Repository Service Refactor"; done true; who "James Taylor"; pct 100; tags <backend refactor>.
#t103 a task; col done; code "CNX-103"; title "Fix Memory Leak in Data Parser"; done true; who "Priya Shah"; pct 100; tags <bugfix performance>.
#t105 a task; col done; code "CNX-105"; title "Create Unit Tests for Auth Module"; done true; who "Aiden Clark"; pct 100; tags <testing auth>.

#dnd a behavior; lib dnd-kit; pkgs <"@dnd-kit/core" "@dnd-kit/sortable" "@dnd-kit/utilities">.
#dnd sensors <pointer keyboard>; pointer activation-distance 6.
#dnd cross-column "move live in onDragOver (live preview)"; within-column "arrayMove in onDragEnd".
#dnd overlay "DragOverlay clone, slight rotate, strong glow"; source-card opacity-30.
#dnd target-column "cyan border highlight"; empty-target "dashed cyan box '+ Drop here'".
#dnd on-drop-cross {toast "Task moved to <column title>"; auto-hide "2.6s"; count update}.
#dnd drop-into-done {done true; pct 100}; drag-out-of-done {done false}.

#create a behavior; entry <header-btn column-plus column-add-task>; column-entry preselects-column !must.
#create modal fields <title priority-pills column-pills tags-optional>; esc closes; backdrop closes; empty-title disables-submit.
#create on-submit {code "CNX-<max+1>"; position top-of-column; toast "Task created"}.

#search a behavior; scope <title code tags assignee>; realtime true; case-insensitive true.
#search no-match-column shows {icon search-x; msg "No results found"; sub "Try adjusting your search."}.
#empty-column shows {icon package-open; msg "No tasks yet"}.

#g a gotcha-list; member <#g1 #g2 #g3 #g4 #g5 #g6>.
#g1 a gotcha; topic tailwind-v4; fix "use @tailwindcss/vite plugin + @import 'tailwindcss' + tokens in @theme block; ¬tailwind.config.js".
#g2 a gotcha; topic react-state; warn "side-effect inside setState updater reads refs AFTER handler nulled them"; fix "compute cross-column flag before setState; fire toast outside updater" !must.
#g3 a gotcha; topic theming; fix "define --color-*/--font-* in @theme → utilities text-cyan/bg-panel/font-display auto-exist; card accent via css var --accent (rgb triplet) consumed by rgba()".
#g4 a gotcha; topic assets; fix "avatars = gradient circle + initials; sparkline/donut = inline svg; ¬images ¬chart-lib".
#g5 a gotcha; topic glass; fix "panels rgba bg + backdrop-filter blur + subtle inset highlight; body bg = 3 radial-gradients over #080F17 (see #tokens §11)".
#g6 a gotcha; topic dnd-strictmode; note "dnd-kit works under React StrictMode; give SortableContext the visible (filtered) list".

#logic a module-hint; file "src/board-logic.ts"; pure true !must.
#logic exports <moveTask reorderTask filterTasks nextCode displayCount applyDoneFlag>.
#logic rule "components import from #logic; ¬business-logic inline in components" !must.

#tests a test-plan; lib vitest; per-skill ".github/skills/vitest-pure-logic.skill.md"; target #logic; ¬dom ¬browser.
#tc1 a case; verify "moveTask source→target: leaves source, enters target at index".
#tc2 a case; verify "reorderTask within column keeps others stable".
#tc3 a case; verify "displayCount = mock count + (live − initial)".
#tc4 a case; verify "filterTasks hits title/code/tag/assignee; case-insensitive; empty query = all".
#tc5 a case; verify "nextCode = CNX-<max+1> across all columns".
#tc6 a case; verify "applyDoneFlag: into done → {done true, pct 100}; out of done → done false".
#tests gate "all green before polish-demo" !must.

#opt a feature; name persist-local; build !may.
#opt how "localStorage: save columns on change; load on start; fallback mock".
#opt when "all mvp green + time remains"; {mvp ¬green} => {#opt build false !must}.

#verify a procedure; order <v1 v2 v3 v4 v5>.
#verify v1 "npm run build → 0 errors".
#verify v2 "open app: compare vs #spec regions/values; colors only from #tokens".
#verify v3 "drag #t130 progress→review: moved + toast + counts 4/4".
#verify v4 "search 'quantum' → #t142 #t119 remain, others hidden, empty columns show no-results; create task → tops chosen column + toast".
#verify v5 "npx vitest run → #tc1..#tc6 green".
