# LVM
- LVM (Logical Volume Manager) là một cơ chế cung cấp quản lý hệ thống lưu trữ thay thế so với phương pháp dựa trên phân vùng truyền thống

- Cho phép tạo các "logical volumes" có thể dễ dàng thay đổi kích thước và quản lý

- Dễ dàng gắn các tập đĩa đó vào hệ thống tập tin của mình như bạn làm với một phân vùng đĩa

# Thành phần chính của LVM
- Physical Volumes (PVs): Thiết bị lưu trữ như đĩa hoặc phân vùng đĩa, dùng để tạo "Volume Groups"

- Volumn Groups (VGs): Là tập hợp các "physical volumns" thành một vùng lưu trữ

- Logical Volumes (LVs): Phân vùng từ các hệ thống truyền thống, chứa các filesystems và có thể mở rộng nhiều đĩa

# Kiến trúc LVM
![alt text](image/basic-lvm-volume-components.png)

# Cơ chế hoạt động của LVM

    Gom nhiều ổ đĩa/partition → thành một pool chung → rồi chia lại thành các phân vùng logic (LV)

Có một hoặc nhiều physical volumes trên nhiều disk, từ các physical volumes gom thành một hoặc nhiều volume groups, mỗi volume groups có thể chia thành một hoặc nhiều logical volumes

Nếu có nhiều physical volumes thì mỗi logical volumes có thể lớn hơn một physical volumes nào đó nhưng ko thể lớn hơn tổng kích thước của các physical volumes

Nếu một phân vùng nào đó không dùng đến có thể ghép nó vào phân vùng cần mở rộng, có thể thay đổi kích thước bất cứ khi nào cần

/boot không thể nằm trong volume group được bởi vì boot loader không thể đọc nó. Nếu partition root nằm trên logical volume thì hãy tạo một một partition riêng cho /boot mà không phải là một phần của volume group.

Volume group có thể chia làm các logical volume để làm các mount point như là /home và root và các loại file system như ext2 và ext3. Khi các partition full dung lượng, không gian trống trong volume group có thể được thêm vào logical volume để tăng dung lương cho partition. Khi có ổ cứng mới được lắp vào hệ thống, nó có thể được thêm vào volume group và tăng kích thước cho logical volumes.

# Ưu điểm của LVM
- Tính linh hoạt: Thay đổi kích thước các logical volume mà không cần phải khởi động lại hệ thống hoặc xóa dữ liệu

- Quản lý dễ dàng: Thông qua giao diện CLI hoặc GUI, người dùng có thể quản lý các PV, VG và LV dễ dàng

- Tính năng snapshot: Tạo ra một bản sao chính xác của một logical volume tại một thời điểm cụ thể

# Nhược điểm của LVM
- Các bước thiết lập phức tạp và khó khăn hơn

- Càng gắn nhiều đĩa cứng và thiết lập càng nhiều LVM thì hệ thống khởi động càng lâu

- Khả năng mất dữ liệu cao khi một trong số các đĩa cứng bị hỏng

# Cách câu lệnh với LVM

Tạo Physical Volume

    sudo pvcreate pv_name /dev/diskName1

Tạo Volume Group 

    sudo vgcreate vg_name /dev/diskName1 /dev/diskName2 ...

Tạo Logical Volume

    sudo lvcreate -L [capacity] -n lv_name vg_name

Câu lệnh kiểm tra volume group

    vgs

Câu lệnh kiểm tra logical volume

    lvs

# Thay đổi kích thước Logical Volume
Tăng kích thước dung lượng cho Logical Volume

    sudo lvextend -L [+capacity/capacity] /dev/vg_name/lv_name

Thay đổi kích thước của Logical Volume nhưng file system trên volume đó chưa được thay đổi, cần phải thực hiện câu lệnh

    resize2fs /dev/vg_name/lv_name

Giảm kích thước dung lượng cho Logical Volume
- Cần umount trước, sau đó kiểm tra file system xem còn dung lượng không rồi mới thực hiện thay đổi

        mkdir /temp
        mv /mnt/mount_point /temp
        umount /mnt/mount_point
        e2fsck -ff /dev/vg_name/lv_name    # Kiểm tra filesystem
        lvreduce -L [capacity] /dev/vg_name/lv_name
        mkfs.ext4 /dev/vg_name/lv_name

# Thay đổi kích thước Volume Group
Thêm dung lượng volume group

    sudo vgextend vg_name /dev/diskName

Giảm dung lượng volume group (cần chuyển dữ liệu trước khi xóa)
    
    sudo vgreduce vg_name /dev/diskName 

# Tạo snapshot
Tạo snapshot

    sudo lvcreate --size [capacity] --snapshot --name snapshotname /dev/vg_name/lv_name

Quay lại một snapshot
- Cần 'umount' trước sau đó --merge lại

        umount /mnt/mount_point
        lvconvert --merge /dev/vg_name/snapshotname

# Tạo mirror logical volume
Tạo một bản ghi giống hệt của logical volume để đảm bảo dữ liệu dự phòng

Tạo mirror

    lvcreate -L [capacity] -m1 -n lv_name vg_name
