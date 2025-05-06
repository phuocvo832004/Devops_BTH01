
## Cách sử dụng

### 1. Chuẩn bị

1. Clone repository này về thư mục cần thiết.
2. Cập nhật file `terraform.tfvars` với các giá trị phù hợp cho môi trường mà bạn cần (xem `terraform.tfvars.example` để tham khảo):
   - `aws_region`: Vùng AWS bạn muốn triển khai (mặc định: ap-southeast-1)
   - `project`: Tên dự án của bạn
   - `environment`: Môi trường (dev/staging/prod)
   - `vpc_cidr`: CIDR block cho VPC
   - `public_subnet_cidrs`: CIDR blocks cho các subnet công khai
   - `private_subnet_cidrs`: CIDR blocks cho các subnet riêng tư
   - `availability_zones`: Các vùng sẵn sàng để sử dụng
   - `app_ami_id`: ID của AMI cho EC2 instances
   - `instance_type`: Loại EC2 instance (mặc định: t3.micro)
   - `key_name`: Tên của SSH key pair trong AWS
   - `allowed_ssh_ip`: Địa chỉ IP được phép kết nối SSH (định dạng CIDR)

### 2. Khởi tạo Terraform

```bash
terraform init
```

### 3. Xem trước các thay đổi

```bash
terraform plan -out=tfplan
```

### 4. Triển khai cơ sở hạ tầng

```bash
terraform apply tfplan
```


## Mô-đun

### VPC
- Tạo VPC với CIDR block được chỉ định
- Tạo các subnet công khai và riêng tư
- Tạo Internet Gateway và NAT Gateway

### Networking
- Thiết lập các route tables
- Cấu hình network ACLs
- Liên kết subnets với route tables tương ứng

### Security
- Tạo security groups cho các EC2 instances
- Cấu hình quy tắc inbound/outbound

### Compute
- Triển khai EC2 instances trong subnet công khai và riêng tư
- Cấu hình security groups và SSH key

