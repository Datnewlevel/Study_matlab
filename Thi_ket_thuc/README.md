# MATLAB - Ghi chú nhanh

## Định dạng đường vẽ
Sử dụng chuỗi ký tự theo cấu trúc: `[Màu sắc][Kiểu đường][Loại Marker]`

### Màu sắc
- `b` - blue (xanh dương)
- `g` - green (xanh lá)
- `r` - red (đỏ)
- `k` - black (đen)
- `m` - magenta (tím)
- `y` - yellow (vàng)

### Kiểu đường
- `-` - nét liền
- `--` - nét đứt
- `:` - nét chấm
- `-.` - nét chấm gạch

### Loại Marker (Ký hiệu điểm)
- `.` - dấu chấm
- `o` - tròn
- `*` - hoa thị
- `s` - vuông
- `d` - kim cương
- `p` - ngôi sao 5 cánh
- `>` - tam giác

## Các lệnh hữu ích

### Giới hạn trục
```matlab
xlim([min max])  % Đặt giới hạn trục x
ylim([min max])  % Đặt giới hạn trục y
```

### Xử lý giá trị vô cùng
```matlab
z(isinf(z)) = NaN;  % Thay thế Inf/-Inf bằng NaN
```

### Thêm text và mũi tên
```matlab
text(-4, 20, '(x + 5)/(x^3 + 1)');
text(-3.3, 10, '\downarrow');
text(3, 60, 'x^3 + 1 \rightarrow');
```
