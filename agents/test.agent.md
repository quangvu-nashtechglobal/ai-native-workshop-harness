// XS3 — Test (QC) role agent (topic-agnostic).

#test a agent; role Test; active-at test-pass; also parallel build.
#test out <#teststrat #testcases>.
#testcases each ref "verifies US-xx" !must.
#test focus happy-path !must; then edge derive-from acceptance-criteria.
#test case-shape {id "TC-0x"; verifies "US-0x"; steps <steps>; expect <result>}.
#test also-role token-log-scribe; write #tokenlog; reason "QC ít cầm bàn phím code".
#test on-done <run-all report-pass-fail commit-#testcases "gõ next">.
