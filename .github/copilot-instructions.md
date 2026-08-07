// XS3 — VS Code Agent mode instructions.

#ci a instruction-file; for vscode-agent.
#ci defer-to "AGENTS.md" !must.
#ci rule "build only 3 mvp features" !must.
#ci rule "artifacts in repo not chat" !must.
#ci rule "scoped context only, no whole-repo dump" !must.
#ci rule "commit each slice; log tokens #tokenlog" !must.
#ci tech "html-css-js"; storage localStorage; backend none.
{?u say <"bắt đầu" "next">} => {#ci run "AGENTS.md #protocol"}.
