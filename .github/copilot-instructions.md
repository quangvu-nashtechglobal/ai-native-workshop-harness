#ci a instruction-file; for vscode-agent.
#ci defer-to "AGENTS.md" !must.
#ci rule "build only mvp in docs/product-brief.md" !must.
#ci rule "tech per docs/product-brief.md".
#ci rule "artifacts in repo not chat" !must.
#ci rule "scoped context only, no whole-repo dump" !must.
#ci rule "commit each slice; log tokens #tokenlog" !must.
{?u say <"start-workshop" "start" "next">} => {#ci run "AGENTS.md #protocol"}.
