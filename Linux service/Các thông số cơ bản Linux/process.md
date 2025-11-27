# Process
- Một quá trình (process) là một chương trình hoặc ứng dụng đang chạy trong hệ thống

- Mỗi process có 1 PID ( Process ID ) đại diện . PID gồm tối đa 5 chữ số và là duy nhất tại 1 thời điểm . PID của process A có thể được tận dụng cho process B nếu process A đã kết thúc

- Có 2 loại process:
    * Foreground Process

    * Background Process

# Foreground
- Foreground Process: Mọi process mà bạn bắt đầu chạy là foreground process . Nó nhận input từ bàn phím và gửi output tới màn hình

- Khi chạy một foreground process sẽ không thế thực hiện các loại câu lệnh khác cho tới khi process đó kết thúc


# Background
- Background Process: Background process chạy mà không được kết nối với bàn phím của bạn . Nếu backround process yêu cầu bất cứ đầu vào từ bàn phím , chương trinh sẽ đợi.

- Lệnh "[command] &": Sẽ chạy process bằng background process

# Cách chuyển trạng thái process và kill process

![alt text](fg_bg.png)

# Thread
- Là một luồng trình tự duy nhất trong một process

- Được gọi là các process nhẹ vì sở hữu một số thuộc tính của process

- Thread chia sẻ bộ nhớ với các thread khác

- Có 3 trạng thái: 
    * Running

    * Ready

    * Blocked