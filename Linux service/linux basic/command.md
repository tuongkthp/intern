# du
- Câu lệnh "du" giúp tóm tắt về việc sử dụng ổ địa trong các thư mục hoặc file

- Cú pháp: du [options] [directory/file]
    ### [option]:
        -0, --null: Kết thúc dòng đầu ra với NULL

        -a or --all: Hiển thông tin toàn bộ thư mục và tập tin, kể cả tệp ẩn

        --apparent-size: Kích thước rõ ràng

# df
- Là câu lệnh cung cấp thông tin có giá trị về việc sử dụng dung lượng ổ đĩa

- df hiển thị lượng dung lượng đĩa có sẵn trên hệ thống tệp chứa mỗi đối số tên tệp

- Cú pháp: "df [options] [filesystems]"
    ### [option]:
        '-a' or '--all': Hiển thị tất cả bao gồm cả tệp giả, trùng lặp, không thể truy cập

        '-h' or '--human-readable': Hiển thị kích thước dưới định dạng dễ đọc bằng cách sử dụng lũy thừa của 1024

        '-H' or '--si': Hiển thị kích thước dưới định dạng dễ đọc bằng cách sử dụng lũy thừa của 1000

# lsblk
- lsblk (list block devices) cung cấp thông tin chi tiết về các thiết bị khối như là ổ cứng,...

- Cú pháp: lsblk [OPTIONS] [DEVICE...]
    ### [option]:
        -a or --all: Hiển thị toàn bộ thiết bị, kể cả thiết bị trống
        
        -b or --bytes: Hiển thị kích thước dưới dạng bytes
        
        -l or --list: In ra dưới định dạng danh sách

# grep
- Là một trong nhưng công cụ hữu ích nhất, dùng để tìm kiếm những từ, cụm từ hoặc mẫu cụ thể trong nhưng tập tin văn bản

- Cú pháp: grep [options] pattern [files]
    ### Trong đó:
        [option]: Những cờ dòng lệnh sửa đổi hành vi của tệp

        [pattern]: Những mẫu cần tìm kiếm

        [files]: Tên các tệp muốn tìm kiếm trong đó
    ### [Option]:
        -i: Tìm kiếm mẫu không phân biệt chữ hoa hay chữ thường

        -w: Tìm kiếm toàn bộ từ chính xác

        -c: Tìm số dòng phù hợp với chuỗi/mẫu đã đưa ra

# egrep
- Là công cụ dùng để dùng để xử lý văn bản và khớp mẫu

- Chức năng giống "grep -E" bằng cách coi các mẫu dưới dạng biểu thức chính quy mở rộng, cho phép khớp mẫu phức tạp hơn mà không cần thoát các ký tự đặc biệt

- Cú pháp: "egrep [ options ] 'PATTERN' files "
    ### [Option]:
        -i: Tìm kiếm mẫu không phân biệt chữ hoa hay chữ thường

        -w: Tìm kiếm toàn bộ từ chính xác

        -c: Tìm số dòng phù hợp với chuỗi/mẫu đã đưa ra

# AWK
- Câu lệnh "awk" là một công cụ xử lý văn bản và quét mẫu, dùng để xử lý dữ liệu và tạo báo cáo theo định dạng

- Cú pháp: "awk [options] 'pattern {action}' input-file > output-file"
    ### Option:
        -F: Đặt dấu phân cách trường tùy chỉnh
        -f: Đọc chương trình awk từ tệp
        -v: Gán một biến trước khi thực thi

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