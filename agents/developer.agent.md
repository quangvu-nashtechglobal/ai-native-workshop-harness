// XS3 — Developer role agent.

#dev a agent; role Developer; active-at <design task-breakdown build>.
#dev out-design #design; obj <components decisions data-flow>.
#components <Board Column Card Storage>.
#dev out-tasks #devspec; map-to US-xx.
#dev out-code #code; via #loop.
#dev tech "html-css-js" !must; backend none !strictly; heavy-lib none.
#dev module small; example <"board.js" "storage.js" "card.js">.
#dev storage localStorage; access "one central place".
#loop a procedure; order <spec plan build verify commit>.
#dev dod <"meets US acceptance-criteria" "runs no-console-error" "has test" "committed">.
