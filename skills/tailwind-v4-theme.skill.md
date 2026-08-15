#sk-tw a skill; name tailwind-v4-theme; layer topic.
#sk-tw trigger <"css setup" "styling" "theme" "colors" "glassmorphism" "glow">.

#sk-tw setup <s1 s2 s3>.
#sk-tw s1 "npm i -D tailwindcss @tailwindcss/vite".
#sk-tw s2 "vite.config.ts: plugins [react(), tailwindcss()]".
#sk-tw s3 "src/index.css starts with @import 'tailwindcss'".
#sk-tw rule "tailwind v4 has ¬tailwind.config.js; all tokens live in @theme block of index.css" !must.
#sk-tw rule "@theme --color-x → utilities text-x bg-x border-x; --font-y → utility font-y".
#sk-tw rule "color single-source = #tokens file; hex inside components forbidden" !must.

#sk-tw glass-recipe "panel = rgba bg (≈0.72) + border rgba(accent,0.18) + backdrop-filter blur(18px) + inset 0 1px 0 rgba(255,255,255,0.04)".
#sk-tw glow-recipe "icon/svg glow = filter drop-shadow(0 0 Npx color); box glow = box-shadow 0 0 Npx rgba(color,a)".
#sk-tw bg-recipe "body = 3 radial-gradients (cyan 10%,10% / violet 85%,15% / mint 50%,100%) over #080F17".
#sk-tw accent-pattern "per-column tint: css var --accent holds rgb triplet ('0, 229, 255'); consume via rgba(var(--accent), a); override inline per column" !must.
#sk-tw fonts "google-fonts link in index.html; Orbitron display, Inter body; map via @theme --font-display --font-body".
