#sk-test a skill; name vitest-pure-logic; layer topic.
#sk-test trigger <"test" "unit test" "vitest" "verify logic">.

#sk-test principle "extract pure functions out of components; test logic, ¬DOM ¬browser ¬dnd-simulation" !must.
#sk-test why "cheapest green tests for a weak model: no jsdom, no render, no async".

#sk-test setup <"npm i -D vitest" "package.json scripts.test = 'vitest run'">.
#sk-test module-hint "src/board-logic.ts: pure exports <moveTask reorderTask filterTasks nextCode displayCount applyDoneFlag>; components import from it".
#sk-test file-shape "src/board-logic.test.ts; import {describe,it,expect} from 'vitest'".

#sk-test case-rule "each test verifies US-xx" !must; per #trace.
#sk-test run "npx vitest run"; gate "no green no next" !must.
