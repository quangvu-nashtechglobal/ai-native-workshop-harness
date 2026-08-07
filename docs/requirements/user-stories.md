# User Stories — MVP

## US-01 — Quản lý thẻ

**Là người dùng cá nhân hoặc thành viên nhóm nhỏ, tôi muốn tạo, xem, sửa và xóa thẻ công việc với tiêu đề, mô tả ngắn và nhãn màu, để quản lý công việc trên bảng Kanban tối giản.**

### Tiêu chí chấp nhận

- [ ] Khi tạo thẻ với tiêu đề hợp lệ, thẻ mới xuất hiện trong cột **To-do** và hiển thị đúng tiêu đề, mô tả ngắn, nhãn màu đã nhập.
- [ ] Khi để trống tiêu đề hoặc chỉ nhập khoảng trắng, hệ thống chặn tạo thẻ và hiển thị thông báo rằng tiêu đề là bắt buộc.
- [ ] Khi sửa tiêu đề, mô tả ngắn hoặc nhãn màu rồi lưu, thẻ hiển thị ngay các giá trị mới.
- [ ] Khi xóa một thẻ, thẻ biến mất khỏi bảng.

## US-02 — Kéo thả và lưu trạng thái

**Là người dùng, tôi muốn kéo thả thẻ giữa ba cột To-do, Doing và 💥 Done, để cập nhật trạng thái công việc và giữ nguyên dữ liệu sau khi tải lại trang.**

### Tiêu chí chấp nhận

- [ ] Khi thả một thẻ hợp lệ vào cột **To-do**, **Doing** hoặc **💥 Done**, thẻ xuất hiện ngay trong cột đích.
- [ ] Sau mỗi lần tạo, sửa, xóa hoặc di chuyển thẻ, toàn bộ trạng thái bảng được ghi ngay dưới dạng JSON vào đúng một khóa `localStorage`.
- [ ] Khi tải lại trang, tất cả thẻ được khôi phục với đúng nội dung, nhãn màu và cột đã lưu.
- [ ] Khi chưa có dữ liệu trong khóa `localStorage`, bảng khởi tạo không có thẻ và vẫn sử dụng được bình thường.

## US-03 — Lọc và tìm thẻ

**Là người dùng, tôi muốn lọc thẻ theo nhãn màu và tìm theo từ khóa trong tiêu đề, để nhanh chóng thấy các công việc liên quan.**

### Tiêu chí chấp nhận

- [ ] Khi chọn một nhãn màu, chỉ các thẻ có nhãn màu đó được hiển thị.
- [ ] Khi nhập từ khóa, chỉ các thẻ có tiêu đề chứa từ khóa được hiển thị, không phân biệt chữ hoa và chữ thường.
- [ ] Khi đồng thời chọn nhãn màu và nhập từ khóa, chỉ các thẻ thỏa mãn cả hai điều kiện được hiển thị.
- [ ] Khi không có thẻ khớp điều kiện, bảng không hiển thị thẻ nào.
- [ ] Khi xóa bộ lọc nhãn và xóa nội dung tìm kiếm, tất cả thẻ được hiển thị lại ở đúng cột hiện tại.
