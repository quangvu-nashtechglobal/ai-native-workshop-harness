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

## Cài (đầu ngày, ~2 phút)
1. Bấm **"Use this template"** trên GitHub → tạo repo dự án (đã có sẵn toàn bộ kit ở gốc).
2. Clone repo, mở bằng **VS Code** (Copilot Agent mode) — hoặc CLI: `npm install -g @github/copilot` → `copilot`.
3. Khởi động harness:
   - **VS Code:** gõ **`/start-workshop`** trong ô Copilot Chat (prompt file `.github/prompts/`).
   - **CLI:** `copilot` trong repo → gõ **`start`** (nó tự đọc `AGENTS.md`). Tiện hơn: chạy
     `./start-workshop.ps1` = mở copilot + tự gõ `start`. CLI không có slash `/tên` tùy biến.
4. **Brief chưa điền?** Agent tự chạy **intake**: phỏng vấn team từng câu (đề tài, người dùng,
   3 feature MVP, tech, tiêu chí thành công, out-of-scope) rồi ghi thẳng `docs/product-brief.md`.
   → Không cần soạn brief trước, cứ trả lời là xong.
5. Xong intake → agent dẫn tiếp từ stage 1 (requirements → design → build → test → demo).
6. `git commit` sau mỗi artifact — như agent nhắc.

> Muốn nhanh hơn: điền sẵn `docs/product-brief.md` trước ngày thi → agent bỏ qua intake, vào việc luôn.

## Ăn điểm
- Trong demo, chỉ ra **file agent XS3 thật** + nói "story do BA agent sinh, test do Test agent".
- Reference rule từ `awesome-agents/` của workshop khi cần, **đừng copy** (đỡ token).
- Chọn **model chi phí thấp** (vd Luna) → giảm mạnh AI credits cho cùng một artifact.
