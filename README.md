# Harness Kit — bê vào repo thi là chạy

Bộ này biến GitHub Copilot thành **điều phối viên** dẫn team đi hết SDLC để xây
**Kanban board** (đề tài đã chốt). Ăn thẳng 25đ *Harness quality* của rubric.

## Nội dung
```
AGENTS.md                        # não bộ: luật + giao thức điều phối (Copilot CLI đọc file này)
.github/copilot-instructions.md  # bản mỏng cho VS Code Agent mode, trỏ về AGENTS.md
agents/ba.agent.md               # persona BA  → user stories
agents/developer.agent.md        # persona Dev → design, dev-spec, code
agents/test.agent.md             # persona QC  → test strategy/cases + thư ký token-log
prompts/run-workshop.md          # prompt khởi động dán tay nếu cần
```

## Cài (đầu ngày, ~3 phút)
1. Tạo repo mới cho team, `git init`.
2. **Copy toàn bộ file trong kit này** vào gốc repo (giữ nguyên cấu trúc thư mục).
3. Copy luôn `docs/product-brief.md` (và `docs/token-log.md`) từ folder `prep/` vào `docs/`.
4. Cài Copilot CLI: `npm install -g @github/copilot` → chạy `copilot` trong thư mục repo.
5. Gõ **"bắt đầu"** (hoặc dán `prompts/run-workshop.md`). Agent sẽ dẫn từ stage 1.
6. `git commit` sau mỗi artifact — như agent nhắc.

## Lưu ý ăn điểm
- Trong demo, **chỉ ra file agent thật** (`agents/*.agent.md`) và nói "story này do BA agent sinh,
  test case do Test agent sinh" → đúng tiêu chí *harness thật sự được dùng*.
- Reference rule từ `awesome-agents/` của workshop khi cần, **đừng copy** (đỡ token).
