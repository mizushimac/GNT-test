### GNT-test

# Palindrome
```
cd palindrome
irb ./palindrome_test
```

# Matrix
```
cd matrix
irb ./matrix_test
```

# RoR Test Vehicles
```
cd sale_vehicles
bundle install
rails db:create db:migrate
rails s -p 3000 -b 0.0.0.0
```

Questions:
- Chưa có thông tin validate field. Như vậy có cần validate gì không?
- Các dữ liệu như nhà sản xuất, model thường là những dữ liệu đa số là không thay đổi nhiều, có muốn tạo nó là dữ liệu master data 
- Mỗi xe đề có những thuộc tính cơ bản này (manufacture, model, year, price),
 như vậy có muốn có những thuộc tính khác để tăng khả năng kích cầu mua xe ko?
ví dụ, chiến dịch giảm giá, khuyến mãi, ưu tiên...
