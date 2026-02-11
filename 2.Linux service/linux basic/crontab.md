# Crontab
- Là tiện ích mạnh dùng để lên lịch task và tự động hóa các task 

- Cho phép người dùng chạy câu lệnh hoặc script trong khoảng thời gian được chỉ định

- Hợp với các task định kì: bảo trì, sao lưu, update

- Cách lên lịch: "MIN HOUR DOM MON DOW CMD"
    * MIN: Chỉ định phút 
    * HOUR: Chỉ định giờ 
    * DOM: Chỉ định ngày của tháng 
    * MON: Chỉ định tháng 
    * DOW: Chỉ định ngày trong tuần
    * CMD: Lệnh hoặc tập lệnh cần lên lịch thực thi

- Câu lệnh về Crontab:
    * crontab [ -u user ] [ -i ] { -e | -l | -r }
        + -e: chỉnh sửa
        + -l: liệt kê
        + -r: xóa Crontab

# Những điểm mô tả cách Crontab làm việc
1. Cấu hình Crontab: Mỗi người dùng đều có thể có crontab file để liệt kê danh sách các câu lệnh hoặc tập lệnh cần chạy theo lịch riêng

2. Các thông số thời gian: phút, giờ, ngày trong tháng, tháng và ngày trong tuần

3. Thực thi theo lịch trình: Quét liên tục các file Crontab xem có file nào cần thực hiện với thời gian hiện tại hay không

4. Ghi log và thông báo: Đâu ra mặc định thường gửi qua email người dùng (có thể bật tắt theo ý muốn)

5. Toàn hệ thống và người dùng cụ thể: Có thể cấu hình cron cho toàn hệ thống bằng quản trị viên, người dùng cũng có thể cấu hình riêng cho mình