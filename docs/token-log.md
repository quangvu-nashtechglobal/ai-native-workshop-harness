# Token Log

Ghi lại các lần tốn token đáng chú ý và cách tối ưu. Mục tiêu rubric:
**value per token** — chuẩn bị 1 con số cụ thể + 1 tối ưu cụ thể cho phần demo.

## Cách bọn mình đo
- Đếm số **request/lượt hỏi** cho mỗi feature (Copilot tính theo premium request).
- Ưu tiên **context scoped** (`#file`, `#selection`, đường dẫn cụ thể) thay vì dump cả repo.
- Tái dùng **harness instructions/skills** thay vì giải thích lại luật mỗi prompt.
- Diff nhỏ, commit thường xuyên → prompt sửa ngắn hơn.

## Nhật ký

| Thời điểm | Việc | Ước token/lượt | Tối ưu đã áp dụng | Kết quả |
|---|---|---|---|---|
| 09:40 | Sinh user stories | ~3 lượt | Chỉ nạp `#product-brief.md` thay vì cả `docs/` | Story đủ 3, không thừa context |
| 10:30 | Sinh component kéo-thả | ~5 lượt | `#file:board.js` + skill react, không dump repo | Ít nhiễu, code đúng lần 2 |
| 11:15 | Viết test cases | ~2 lượt | Reference `agents/test.agent.md` sẵn, không nhắc lại luật test | Case bám đúng acceptance criteria |

## ⭐ Câu chuyện đem đi present (1 số + 1 tối ưu)
> "Ở bước sinh test, lần đầu bọn em nạp cả thư mục `docs/` (~X token/lượt).
> Sau khi đổi sang chỉ `#file:user-stories.md`, context giảm còn ~Y — **giảm ~Z%**
> mà chất lượng test không đổi. Áp dụng nguyên tắc scoped-context cho toàn bộ
> phần còn lại của ngày."

> 💡 Cố tình chạy 1 lần **A/B** (cả repo vs scoped) ngay đầu ngày để có số X, Y thật.
