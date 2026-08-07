# Product Brief

## Problem
Cá nhân và nhóm nhỏ cần một chỗ nhẹ để theo dõi việc cần làm và thấy ngay
việc gì đang làm / đã xong. Sticky note và chat thì trôi mất; công cụ lớn
(Jira/Trello) nặng, cần tài khoản và cấu hình. Cần một bảng Kanban tối giản,
mở là chơi, không đăng nhập, chạy hoàn toàn trên máy.

## Target users
1. **Cá nhân** quản lý task trong ngày — muốn ghi nhanh, kéo thả, không rườm rà.
2. **Nhóm nhỏ (2–4 người)** theo dõi việc chung một cách nhẹ nhàng, không cần
   server hay account.

## Core features (MVP — max 3)
1. **Quản lý thẻ** — tạo / sửa / xóa thẻ task (tiêu đề, mô tả ngắn, nhãn màu).
2. **Kéo-thả + lưu** — kéo thẻ giữa 3 cột **To-do / Doing / 💥 Done**; trạng thái
   tự lưu vào `localStorage` (reload trang không mất dữ liệu).
3. **Lọc / tìm** — lọc thẻ theo nhãn hoặc tìm theo từ khóa tiêu đề.

## Out of scope (explicitly NOT building today)
- Nhiều người dùng thời gian thực / đồng bộ qua server
- Tài khoản, đăng nhập, phân quyền
- Backend, database ngoài (chỉ dùng `localStorage`)
- Đính kèm file, bình luận, nhật ký lịch sử
- Ứng dụng mobile riêng, kéo-thả cảm ứng nâng cao

## Success / demo criteria
Trong 5 phút, thao tác **live** không lỗi console:
1. Tạo một thẻ mới với nhãn.
2. Kéo thẻ **To-do → Doing → 💥 Done**.
3. **Reload** trang — thẻ vẫn còn đúng cột (chứng minh localStorage).
4. Lọc theo nhãn — chỉ hiện đúng thẻ khớp.

## Tech stack (align with your harness)
- **Frontend:** HTML + CSS + JavaScript thuần, SPA một trang (đổi sang React nếu
  harness có sẵn rule `instructions/react/`).
- **Backend:** không.
- **Data/storage:** `localStorage` của trình duyệt.

---

### Acceptance criteria gợi ý (BA khai triển thành user story ở `docs/requirements/`)
- **Tạo thẻ:** nhập tiêu đề (bắt buộc) → thẻ xuất hiện ở cột To-do; tiêu đề rỗng
  thì chặn tạo.
- **Kéo thả:** thả thẻ vào cột khác → thẻ đổi cột; trạng thái mới được ghi ngay.
- **Bền vững:** reload trang → toàn bộ thẻ và vị trí cột giữ nguyên.
- **Lọc:** chọn nhãn → chỉ thẻ có nhãn đó hiển thị; xóa lọc → hiện lại tất cả.
- **Xóa:** xóa thẻ → biến mất khỏi bảng và khỏi localStorage.

> 🐱 Theming vui (không tốn scope): mascot mèo, cột Done đặt tên "💥 Done",
> thẻ nổ confetti khi vào Done. Chỉ CSS/emoji, không thêm feature.
