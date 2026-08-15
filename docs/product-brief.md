#brief a product-brief; status complete !must; form xs3.

#brief topic "Cyber-Nexus Kanban Board — recreate a futuristic sprint dashboard".
#brief problem "team needs a live Kanban board matching a high-fidelity cyberpunk design spec; prove an AI-driven flow can go design-spec → working app in one workshop".
#brief target-users <"agile team member (views + drags tasks)" "scrum master (reads sprint stats, creates tasks)">.

#brief mvp <#mvp1 #mvp2 #mvp3>; mvp-max 3 !strictly.
#mvp1 a feature; name board-ui; what "static screen per #spec: sidebar + header + 6 stat cards + 4 kanban columns + 12 task cards"; source #spec !must.
#mvp2 a feature; name drag-drop; what "drag card across/within columns; drop highlight; toast 'Task moved to X'; counts update".
#mvp3 a feature; name search-create; what "realtime search on title/code/tag/assignee + create-task modal (title, priority, column); new card tops column".

#brief tech-stack <vite react-ts tailwind-v4 dnd-kit lucide-react>.
#brief storage none; backend none; data mock-in-source !must.

#brief success-criteria <#sc1 #sc2 #sc3 #sc4>.
#sc1 a criterion; check "npm run build passes, 0 ts errors".
#sc2 a criterion; check "screen matches #spec layout+colors; all colors from #tokens, no stray hex" !must.
#sc3 a criterion; check "drag CNX-130 progress→review: card moves, toast shows, count updates".
#sc4 a criterion; check "search 'quantum' filters all columns; non-matching column shows empty-state".

#brief out-of-scope <backend auth task-detail-drawer group-by-switch mobile-layout sidebar-subpages charts-lib redux>.
{?x member #brief.out-of-scope} => {?x build false !must}.
#brief optional <persist-local>; detail #spec.opt; rule "only after all mvp green" !must.

#spec = "docs/knowledge/cyber-nexus-spec.md"; role design-source !must.
#tokens = "docs/knowledge/cyber-nexus-color-tokens.md"; role color-source !must.
#brief read-order <#spec #tokens> before design !must.
