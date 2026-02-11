## Swap, hay còn gọi là bộ nhớ ảo, là một không gian trên ổ cứng được hệ điều hành sử dụng như một phần mở rộng của bộ nhớ RAM. Khi RAM vật lý đầy, Linux sẽ di chuyển những dữ liệu ít được sử dụng từ RAM sang không gian swap này, giải phóng bộ nhớ cho các tác vụ ưu tiên hơn.

## Có 2 dạng chính:
#### Swap Partition:
	- Là một phân vùng riêng biệt trên ổ cứng, được dành riêng cho mục đích làm bộ nhớ ảo.
	- Hoạt động độc lập với các phân vùng chứa hệ điều hành hay dữ liệu người dùng
	- Cho hiệu suất tốt hơn một chút so với một tệp swap nhưng lại kém linh hoạt hơn vì khó thay đổi kích thước sau khi đã tạo
#### Swap File:
	- Là một tệp tin đặc biệt nằm trên một hệ thống tập tin hiện có
	- Có tính linh hoạt
	- Dễ dàng tạo mới, thay đổi kích thước hoặc xóa bỏ mà không cần phải can thiệp vào cấu trúc phân vùng ổ đĩa.
## Cách hoạt động:
#### Khi RAM còn trống -> Linux sử dụng RAM bình thường.
	
#### Khi RAM bắt đầu đầy -> Linux chuyển bớt dữ liệu ít dùng (inactive pages) vào Swap để:
	- Giải phóng RAM
	- Giữ cho ứng dụng không bị crash

#### Khi hệ thống quá tải RAM -> Swap giữ hệ thống không bị treo (out-of-memory).

## Kiểm tra hệ thống
#### Lệnh "free -h": Lệnh này sẽ trả về một bảng thông tin về bộ nhớ (dạng GB, MB, KB)

#### Lệnh "swapon --show": Kiểm tra Swap đang dùng ở đâu

## Có thực sự hữu ích ?
#### Rất hữu ích nhưng ko phải lúc nào cũng tốt:
	- swap là một “vùng đệm an toàn”, không phải là một giải pháp thay thế hoàn toàn cho bộ nhớ vật lý
	- swap dùng nhiều khiến hiệu năng giảm, giảm tuổi thọ của ổ cứng
