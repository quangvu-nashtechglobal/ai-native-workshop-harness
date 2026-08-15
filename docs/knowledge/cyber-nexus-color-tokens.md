# CYBER NEXUS Design System Color Tokens

Bảng màu này dùng cho giao diện web dark-mode Kanban Board theo style high-tech, futuristic, glassmorphism, neon cyan và electric violet.

---

## 1. Core Palette

| Group | Token Name | Hex | Usage |
|---|---|---:|---|
| Primary | Neon Cyan | `#00E5FF` | CTA, active state, border glow, progress |
| Primary | Electric Violet | `#7B5CFF` | Accent, review state, card glow |
| Secondary | Neon Mint | `#00FFA3` | Success, completed, online |
| Secondary | Magenta Pulse | `#FF57E9` | Highlight, blocked accent, special glow |
| Accent | Solar Orange | `#FF8B00` | High priority, warning |
| Accent | Critical Red | `#FF4D4D` | Urgent, error, danger |
| Neutral | Obsidian Black | `#080F17` | Main background |
| Neutral | Panel Navy | `#121B26` | Panel background |
| Neutral | Deep Slate | `#182130` | Card background, elevated surface |
| Neutral | Border Slate | `#242A3A` | Borders, dividers |
| Neutral | Muted Text | `#9098AA` | Secondary text |
| Neutral | Ice White | `#DCE1EA` | Primary text |

---

## 2. CSS Variables

```css
:root {
  /* Background */
  --color-bg-main: #080F17;
  --color-bg-panel: #121B26;
  --color-bg-card: #182130;
  --color-border: #242A3A;

  /* Text */
  --color-text-primary: #DCE1EA;
  --color-text-secondary: #9098AA;
  --color-text-muted: #5F6B7A;

  /* Brand */
  --color-primary-cyan: #00E5FF;
  --color-primary-violet: #7B5CFF;
  --color-secondary-mint: #00FFA3;
  --color-secondary-magenta: #FF57E9;

  /* Accent */
  --color-accent-orange: #FF8B00;
  --color-accent-red: #FF4D4D;
}
```

---

## 3. Kanban Status Colors

```css
:root {
  --color-status-backlog: #00E5FF;
  --color-status-progress: #2F80FF;
  --color-status-review: #7B5CFF;
  --color-status-done: #00FFA3;
  --color-status-blocked: #FF4D4D;
  --color-status-offline: #3A4658;
}
```

### Suggested usage

```css
.status-backlog {
  color: var(--color-status-backlog);
  border-color: rgba(0, 229, 255, 0.45);
}

.status-progress {
  color: var(--color-status-progress);
  border-color: rgba(47, 128, 255, 0.45);
}

.status-review {
  color: var(--color-status-review);
  border-color: rgba(123, 92, 255, 0.45);
}

.status-done {
  color: var(--color-status-done);
  border-color: rgba(0, 255, 163, 0.45);
}
```

---

## 4. Priority Colors

```css
:root {
  --color-priority-urgent: #FF4D4D;
  --color-priority-high: #FF8B00;
  --color-priority-med: #7B5CFF;
  --color-priority-low: #00FFA3;
}
```

### Priority badge examples

```css
.badge-urgent {
  color: #FF8A8A;
  background: rgba(255, 77, 77, 0.12);
  border: 1px solid rgba(255, 77, 77, 0.45);
}

.badge-high {
  color: #FFB86A;
  background: rgba(255, 139, 0, 0.12);
  border: 1px solid rgba(255, 139, 0, 0.45);
}

.badge-med {
  color: #A99BFF;
  background: rgba(123, 92, 255, 0.14);
  border: 1px solid rgba(123, 92, 255, 0.45);
}

.badge-low {
  color: #71FFD0;
  background: rgba(0, 255, 163, 0.10);
  border: 1px solid rgba(0, 255, 163, 0.40);
}
```

---

## 5. Gradients

```css
:root {
  --gradient-cyan-violet: linear-gradient(135deg, #00E5FF 0%, #7B5CFF 100%);
  --gradient-violet-mint: linear-gradient(135deg, #7B5CFF 0%, #00FFA3 100%);
  --gradient-mint-cyan: linear-gradient(135deg, #00FFA3 0%, #00E5FF 100%);
  --gradient-magenta-red: linear-gradient(135deg, #FF57E9 0%, #FF4D4D 100%);
  --gradient-orange-magenta: linear-gradient(135deg, #FF8B00 0%, #FF57E9 100%);
  --gradient-panel-glow: linear-gradient(135deg, rgba(0, 229, 255, 0.14), rgba(123, 92, 255, 0.16));
}
```

---

## 6. Glow And Shadow Tokens

```css
:root {
  --glow-cyan-soft: 0 0 12px rgba(0, 229, 255, 0.35);
  --glow-cyan-strong: 0 0 24px rgba(0, 229, 255, 0.55);

  --glow-violet-soft: 0 0 12px rgba(123, 92, 255, 0.35);
  --glow-violet-strong: 0 0 28px rgba(123, 92, 255, 0.60);

  --glow-mint-soft: 0 0 12px rgba(0, 255, 163, 0.35);
  --glow-red-soft: 0 0 12px rgba(255, 77, 77, 0.35);

  --shadow-panel: 0 18px 40px rgba(0, 0, 0, 0.45);
  --shadow-card: 0 12px 28px rgba(0, 0, 0, 0.38);
}
```

---

## 7. Glassmorphism Panel

```css
.cyber-panel {
  background: rgba(18, 27, 38, 0.72);
  border: 1px solid rgba(0, 229, 255, 0.18);
  box-shadow:
    0 18px 40px rgba(0, 0, 0, 0.45),
    inset 0 1px 0 rgba(255, 255, 255, 0.04);
  backdrop-filter: blur(18px);
  border-radius: 16px;
}
```

---

## 8. Task Card Style

```css
.cyber-card {
  background:
    radial-gradient(circle at top left, rgba(0, 229, 255, 0.10), transparent 32%),
    radial-gradient(circle at bottom right, rgba(123, 92, 255, 0.12), transparent 36%),
    rgba(18, 27, 38, 0.78);
  border: 1px solid rgba(0, 229, 255, 0.22);
  border-radius: 14px;
  box-shadow:
    0 12px 28px rgba(0, 0, 0, 0.38),
    0 0 18px rgba(0, 229, 255, 0.12);
  backdrop-filter: blur(16px);
}

.cyber-card:hover {
  border-color: rgba(0, 229, 255, 0.48);
  box-shadow:
    0 16px 36px rgba(0, 0, 0, 0.46),
    0 0 24px rgba(0, 229, 255, 0.28);
}
```

---

## 9. Primary Button

```css
.cyber-button-primary {
  color: #DCE1EA;
  background: linear-gradient(135deg, rgba(0, 229, 255, 0.18), rgba(123, 92, 255, 0.28));
  border: 1px solid rgba(0, 229, 255, 0.55);
  box-shadow:
    0 0 16px rgba(0, 229, 255, 0.35),
    0 0 28px rgba(123, 92, 255, 0.28);
  border-radius: 10px;
}

.cyber-button-primary:hover {
  border-color: rgba(123, 92, 255, 0.75);
  box-shadow:
    0 0 20px rgba(0, 229, 255, 0.45),
    0 0 36px rgba(123, 92, 255, 0.42);
}
```

---

## 10. Progress Bar

```css
.progress-track {
  width: 100%;
  height: 6px;
  background: rgba(144, 152, 170, 0.14);
  border-radius: 999px;
  overflow: hidden;
}

.progress-fill {
  height: 100%;
  background: linear-gradient(90deg, #00E5FF 0%, #7B5CFF 100%);
  box-shadow: 0 0 12px rgba(0, 229, 255, 0.45);
  border-radius: inherit;
}

.progress-fill.done {
  background: linear-gradient(90deg, #00FFA3 0%, #00E5FF 100%);
  box-shadow: 0 0 12px rgba(0, 255, 163, 0.45);
}
```

---

## 11. Recommended App Background

```css
body {
  color: #DCE1EA;
  background:
    radial-gradient(circle at 10% 10%, rgba(0, 229, 255, 0.10), transparent 28%),
    radial-gradient(circle at 85% 15%, rgba(123, 92, 255, 0.12), transparent 30%),
    radial-gradient(circle at 50% 100%, rgba(0, 255, 163, 0.06), transparent 28%),
    #080F17;
}
```

---

## 12. Quick Tailwind Mapping

```js
export const cyberNexusColors = {
  bg: {
    main: '#080F17',
    panel: '#121B26',
    card: '#182130'
  },
  border: '#242A3A',
  text: {
    primary: '#DCE1EA',
    secondary: '#9098AA',
    muted: '#5F6B7A'
  },
  brand: {
    cyan: '#00E5FF',
    violet: '#7B5CFF',
    mint: '#00FFA3',
    magenta: '#FF57E9'
  },
  priority: {
    urgent: '#FF4D4D',
    high: '#FF8B00',
    med: '#7B5CFF',
    low: '#00FFA3'
  },
  status: {
    backlog: '#00E5FF',
    progress: '#2F80FF',
    review: '#7B5CFF',
    done: '#00FFA3',
    blocked: '#FF4D4D',
    offline: '#3A4658'
  }
};
```

---

## 13. Notes

- Nền chính nên dùng `#080F17` để giữ cảm giác obsidian dark.
- Card và panel không nên dùng màu solid quá đậm, nên dùng `rgba()` kết hợp `backdrop-filter` để giữ hiệu ứng glassmorphism.
- Cyan `#00E5FF` nên là màu active chính.
- Violet `#7B5CFF` nên dùng cho review, hover glow, secondary CTA.
- Mint `#00FFA3` nên dùng cho completed, success, online.
- Red `#FF4D4D` nên dùng tiết chế cho urgent/error để tránh UI bị quá gắt.
