## Nhóm Linux là tập hợp gồm một hoặc nhiều người dùng có yêu cầu quyền giống nhau đối với các tệp và thư mục. Một người dùng có thể là thành viên của nhiều nhóm cùng một lúc.
## Trong Linux, thông tin của mỗi nhóm được lưu trữ trong tệp "/etc/group"

## Câu lệnh xem người dùng thuộc Nhóm nào trong Linux:
	- groups: hiển thị tên nhóm hiện tại và người dùng thuộc các nhóm đó
		groups groupname: hiển thị các user của groupname
	- id: in thông tin người dùng và nhóm của người dùng hiện tại
	- id username: in thông tin người dùng và nhóm của người dùng username
	- grep sk /etc/group: có thể tìm thấy người dùng cụ thể thuộc về nhóm nào
