# Bash and Bash Scripting
- Là một người phiên dịch dòng lệnh hoặc Unix Shell, dùng như một shell đăng nhập mặc định cho hầu hết các bản phân phối Linux

- Scripting dùng để tự động thực thi các nhiệm vụ mà con người không cần phải thực thi lần lượt từng cái

# Các bước viết một bash script và thực thi
    1. Tạo 1 file có đuôi mở rộng ".sh"
    2. Viết code vào file đó
    3. Cấp quyền thực thi cho file đó
    4. Thực thi bằng câu lệnh "./filename.sh"

# Cách viết mã nguồn
### Biến (Variables)
- Cú pháp: name=value 

- Biến toàn cục (global variables): Khai báo bên ngoài các hàm hoặc khối lệnh, có thể được truy cập từ bất kì đâu trong chương trình (Tạo như cú pháp bình thường)

- Biến cục bộ (local variables): Khai báo bên trong một hàm hoặc một khối lệnh, chỉ có thể truy cập trong phạm vi hàm hoặc khối lệnh đó
    * Cú pháp: local name=value

### Hàm (function)
- Cách định nghĩa 1 hàm: 
    - function_name () {compound-command} [ redirections ]
    #### Ví dụ:
        multiply () {
            result=$(($1 * $2))    # $1 và $2 là tham số được truyền vào khi gọi hàm
            echo "The result of multiplication: $result"
        } > output.txt
- Cách gọi hàm: funcName "argument1" "argument2" ...
### Cấu trúc rẽ nhánh
    if [ điều_kiện_1 ]; then
        # Lệnh khi điều kiện 1 đúng
    elif [ điều_kiện_2 ]; then
        # Lệnh khi điều kiện 2 đúng
    else
        # Lệnh khi tất cả điều kiện sai
    fi

### Vòng lặp for
    for _name_ in ...;
    do
        ....
    done

### Vòng lặp while
    while [ condition ]; do
        # Các câu lệnh
    done




