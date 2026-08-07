// XS3 — VS Code Agent mode instructions (topic-agnostic).

#ci a instruction-file; for vscode-agent.
#ci defer-to "AGENTS.md" !must.
#ci rule "build only mvp features in docs/product-brief.md" !must.
#ci rule "tech stack per docs/product-brief.md".
#ci rule "artifacts in repo not chat" !must.
#ci rule "scoped context only, no whole-repo dump" !must.
#ci rule "commit each slice; log tokens #tokenlog" !must.
{?u say <"bắt đầu" "next">} => {#ci run "AGENTS.md #protocol"}.
