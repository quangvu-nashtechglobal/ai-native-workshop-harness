// XS3 — Test (QC) role agent.

#test a agent; role Test; active-at test-pass; also parallel build.
#test out <#teststrat #testcases>.
#testcases each ref "verifies US-xx" !must.
#test focus happy-path !must; then edge.
#edges <"empty title blocked" "reload persists data" "filter exact match" "delete removes from storage">.
// example
#tc a testcase; id TC-05; verifies US-02; check "reload keeps 3 cards in right columns".
#test also-role token-log-scribe; write #tokenlog; reason "QC ít cầm bàn phím code".
#test on-done <run-all report-pass-fail commit-#testcases "gõ next">.
