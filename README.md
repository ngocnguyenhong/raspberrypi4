# Hướng dẫn cài đặt phần mềm Anydesk trên Ubuntu 20.0 ARM64
## Cách 1 - Chạy bằng file Script
Bạn tải file có tên CaiAnydeskTrenArm64.sh  
[Link tải file CaiAnydeskTrenArm64.sh!](https://raw.githubusercontent.com/ngocnguyenhong/raspberrypi4/main/CaiAnydeskTrenArm64.sh)  
Nhập lệnh trên Terminal ở vị trí tải file ``CaiAnydeskTrenArm64.sh  ``
``sudo chmod a+x CaiAnydeskTrenArm64.sh  ``
``sudo ./CaiAnydeskTrenArm64.sh  ``
Sau khi Script cài đặt xong. Nhập lệnh để lấy id Anydesk trên Terminal  
``anydesk --get-id  ``

## Cách 2 - Tự cài đặt Anydesk
Mở Terminal và nhập lệnh:  
``sudo dpkg --add-architecture armhf``  
``sudo apt update && sudo apt upgrade -y``  
(Copy câu lệnh trong ngoặc kép và dán vào Terminal)  
``"sudo apt install -y libraspberrypi0:armhf libraspberrypi-dev:armhf libraspberrypi-doc:armhf libraspberrypi-bin:armhf libraspberrypi0:armhf libraspberrypi-dev:armhf libraspberrypi-doc:armhf libraspberrypi-bin:armhf libatk-adaptor:armhf libgail-common:armhf libcanberra-gtk-module:armhf libpolkit-gobject-1-0:armhf"``  

Tải anydesk từ trang chủ về (Ngày 20.10.2020 phiên bản Anydesk mới nhất là 6.0.1-1)  
Nhập lệnh cài Anydesk:  
``sudo dpkg -i anydesk_6.0.1-1_armhf.deb``  
``sudo apt -f install``  
Tải file thư viện lib.tgz [tại đây](https://github.com/ngocnguyenhong/raspberrypi4/raw/main/lib.tgz)  
Giả nén:  
``tar -C /tmp -xvzf /tmp/lib.tgz``  
File sẽ giải nén ra mợt thu mục tê là lib, copy thư mục này vào thư mục hệ thống"  
``sudo mkdir /opt/vc``  
``sudo cp -r lib /opt/vc``  
Tạo file vc.conf:  
``sudo echo '/opt/lib/vc' > vc.conf``  
Copy vào thư mục /etc/ld.so.conf.d:  
``sudo cp vc.conf /etc/ld.so.conf.d/vc.conf``  
Chạy lệnh để cập nhật thông tin thư mục /opt/vc/lib:  
``sudo ldconfig``  
Khởi động dịch vụ anydesk:  
``anydesk --start-service`` 
## Sau qua trình cài đặt, nhập lệnh lấy id lỗi thì khởi động lại Raspberry Pi.  
