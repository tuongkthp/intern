

# stdin
- stdin (standard input) là nguồn đầu vào mặc định cho các chương trình và thường bắt nguồn từ bàn phím

- Nguồn có thể được thay đổi bằng cách sử dụng chuyển hướng:
    * Lấy nội dung có sẵn của 1 tập tin khác vào chương trình
    * Ví dụ:  ./your_script.sh < inputfile.txt
        - Lấy nội dung của file inputfile.txt vào ./your_script.sh

# stdout
- stdout (standard output) là đầu ra được sử dụng để xuất dữ liệu được xử lý bằng chương trình

- Có thể điều hướng đầu ra đến một tập tin:
    * Lấy dữ liệu đầu ra của chương trình để ghi vào một tập tin
    * Ví dụ: echo "This will be written to file.txt" > file.txt
        * Tạo ra một tệp file.txt và ghi đầu ra của echo "This will be written to file.txt" vào file đó

# stderr
- stderr (standard error) được dùng bởi các chương trình để xuất ra các thông báo lỗi

- Thông thường, stderr được hiển thị trên màn hình

- Có thể điều hướng giống như stdout

# Kết hợp stderr và stdout
- Có thể điều hướng cả stdout và stderr đến cùng 1 file

- Cách dùng: thêm hậu tố "2>&1" vào sau câu lệnh để xuất ra cả stdout và stderr đến cùng 1 file

- Ví dụ: "./run_some_script.sh >log.txt 2>&1"
    * Xuất cả stdout và stderr của ./run_some_script.sh đến log.txt

# dev/null
### /dev
    Là một thư mục lưu trữ toàn bộ thiết bị vật lý và thiết bị ảo của hệ thống linux

### /dev/null
- Là một thiết bị ảo, có một thuộc tính đặc biệt là bất kì dữ liệu nào được ghi vào /dev/null sẽ biến mất (called bitbucket or blackhole)

- Mục đích chính dùng để loại bỏ stdout và stderr

# ">/dev/null 2>&1"
- ">/dev/null": Điều hướng toàn bộ stdout tới "/dev/null"

- "2>&1": sẽ điều hướng toàn bộ stderr sang stdout

- ">/dev/null 2>&1": Điều hướng toàn bộ stdout tới "/dev/null", khi có stderr sẽ điều hướng tới stdout và khi này stdout đang trỏ tới "/dev/null" nên toàn bộ stdout và stderr sẽ được điều hướng tới "/dev/null"

# "2>&1 >/dev/null"
- "2>&1": sẽ điều hướng toàn bộ stderr sang stdout

- ">/dev/null": Điều hướng toàn bộ stdout tới "/dev/null"

- "2>&1 >/dev/null": Điều hướng toàn bộ stderr tới stdout, sau đó điều hướng stdout tới "/dev/null"
    * Nếu dữ liệu là stdout sẽ được chuyển thẳng tới "/dev/null"
    
    * Nếu dữ liệu là stderr sẽ được chuyển tới stdout, tại thời điểm này luồng dữ liệu này vẫn là stderr nên sẽ được in ra màn hình, sau đó chuyển tiếp tới "/dev/null"