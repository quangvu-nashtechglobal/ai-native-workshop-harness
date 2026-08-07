// XS3 — Developer role agent (topic-agnostic; tech from product-brief).

#dev a agent; role Developer; active-at <design task-breakdown build>.
#dev out-design #design; covers <components decisions data-flow>; derive-from #brief.
#dev out-tasks #devspec; map-to US-xx.
#dev out-code #code; via #loop.
#dev tech source #brief.tech-stack !must; run local !must; scope mvp-only !must.
#dev module small; commit after-each-slice.
#loop a procedure; order <spec plan build verify commit>.
#dev dod <"meets US acceptance-criteria" "runs without error" "has test" "committed">.
