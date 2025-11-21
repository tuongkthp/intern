# AWK
- Câu lệnh "awk" là một công cụ xử lý văn bản và quét mẫu mạnh, dùng để xử lý dữ liệu và tạo báo cáo theo định dạng
- Cú pháp: "awk [options] 'pattern {action}' input-file > output-file"
- Option:
    * -F: Đặt dấu phân cách trường tùy chỉnh
    * -f: Đọc chương trình awk từ tệp
    * -v: Gán một biến trước khi thực thi

# cut
- Câu lệnh "cut" dùng để trích xuất những phần cụ thể từ mỗi dòng của 1 tập tin hoặc luồng đầu vào dựa trên vị trí byte, kí tự hoặc dấu phân cách trường và xuất kết quả đầu ra tiêu chuẩn
- Cú pháp: "cut OPTION... [FILE].."
- Option:
    * -b, --bytes=LIST: chỉ chọn những byte chỉ định trong danh sách
    * -c, --characters=LIST: chỉ chọn những kí tự chỉ định trong danh sách
    * -d, --delimiter=DELIM: Sử dụng làm ký tự dấu phân cách trường thay vì ký tự tab.DELIM

# sed
- Là một trình soạn thảo ko tương tác dùng để thực thi chuyển đổi văn bản cơ bản từ một luồng nhập vào
- Cú pháp: "sed [OPTIONS] 'COMMAND' [INPUTFILE...]"
    ### Trong đó:
        'OPTIONS': Đây là những cờ tùy chọn sửa đổi hành vi của lệnh sed.
        'COMMAND': Điều này xác định lệnh hoặc chuỗi lệnh để thực thi trên tệp đầu vào.
        'INPUTFILE': Một hoặc nhiều tệp đầu vào sẽ được xử lý.
    ### Option:
        -i: Ghi đè lên 1 vị trí
        -n: Chặn việc in tự động các dòng
        -e: Cho phép nhiều lệnh


# grep
- Là một trong nhưng công cụ hữu ích nhất, dùng để tìm kiếm những từ, cụm từ hoặc mẫu cụ thể trong nhưng tập tin văn bản
- Cú pháp: grep [options] pattern [files]
    ### Trong đó:
        [option]: Những cờ dòng lệnh sửa đổi hành vi của tệp
        [pattern]: Những mẫu cần tìm kiếm
        [files]: Tên các tệp muốn tìm kiếm trong đó
