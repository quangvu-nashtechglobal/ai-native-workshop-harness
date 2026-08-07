# XS3 Harness Kit — AI-Native Workshop

Harness **chung chung (topic-agnostic)** biến GitHub Copilot thành **điều phối viên**
dẫn team đi hết SDLC. Toàn bộ file agent viết bằng **XS3** (notation đồ thị có nhãn).
Ăn thẳng 25đ *Harness quality* của rubric.

## Kiến trúc 2 lớp
- **Máy móc (không đổi)** — `AGENTS.md` + `.github/` + `agents/` + `prompts/`: giao thức
  điều phối, stage, working agreements, kỷ luật token, traceability. **Không dính đề tài.**
- **Đề tài (thay là xong)** — `docs/product-brief.md`: scope/feature/tech của sản phẩm.
  Đổi đề tài = **viết lại mỗi file này**, harness giữ nguyên.

> Brief hiện tại đang là **Kanban board** làm ví dụ. Muốn đề tài khác → sửa `product-brief.md`.

## Nội dung
```
AGENTS.md                        # não bộ XS3: luật + giao thức điều phối (Copilot CLI đọc)
.github/copilot-instructions.md  # bản mỏng cho VS Code Agent mode, trỏ về AGENTS.md
agents/ba.agent.md               # persona BA  → user stories
agents/developer.agent.md        # persona Dev → design, dev-spec, code
agents/test.agent.md             # persona QC  → test strategy/cases + thư ký token-log
prompts/run-workshop.md          # prompt khởi động dán tay nếu cần
docs/product-brief.md            # ← LỚP ĐỀ TÀI: sửa file này để đổi sản phẩm
docs/token-log.md                # seed nhật ký token
```

## Cài (đầu ngày, ~3 phút)
1. Tạo repo dự án cho team (hoặc "Use this template" nếu repo này bật template).
2. Copy toàn bộ file trong kit vào gốc repo (giữ nguyên cấu trúc thư mục).
3. **Viết `docs/product-brief.md`** theo đề tài team chọn (đã có sẵn bản Kanban mẫu).
4. Cài Copilot CLI: `npm install -g @github/copilot` → chạy `copilot` trong repo.
5. Gõ **"bắt đầu"** (hoặc dán `prompts/run-workshop.md`). Agent tự dẫn từ stage 1.
6. `git commit` sau mỗi artifact — như agent nhắc.

## Ăn điểm
- Trong demo, chỉ ra **file agent XS3 thật** + nói "story do BA agent sinh, test do Test agent".
- Reference rule từ `awesome-agents/` của workshop khi cần, **đừng copy** (đỡ token).
- Chọn **model chi phí thấp** (vd Luna) → giảm mạnh AI credits cho cùng một artifact.
