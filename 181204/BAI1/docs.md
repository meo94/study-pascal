Liệt kê dãy nhị phân
- Phương pháp sinh

proceduce Generate;
begin
    <Xây dựng cấu hình ban đầu>
    stop:= false;
    while not stop do
    begin
        <Đưa ra cấu hình đang có>
        sinh_kế_tiếp; // thủ tục sinh cấu hình kế tiếp
    end;
end;

- Thuat toan quay lui
Giả sử lời giải bài toán gồm n thành phần x_1, x_2, ..., x_n. Ta đã tìm được i-1 thành phần x_1, x_2, ..., x_i-1 (ta gọi đây là lời giải bộ phận cấp i-1). Bây giờ ta cần xác định thành phần x_i bằng cách duyệt tất cả các khả năng có thể đề cử cho nó (khả năng có giá trị từ 1 đến n_i). Với mỗi khả năng j cần kiểm tra xem có chập nhận đc không

proceduce Try(i: integer)
var j: integer;
begin
    for j:= 1 to n_i do // duyệt các khả năng có thể
    if <chấp nhận j> then
    begin
        <xác định x_i theo j>
        if i=n then <ghi nhận một cấu hình>
        else Try(i+1);
    end;
end;

Việc chấp nhận j còn phụ thuộc vào việc đã chọn các khả năng tại i-1 bước trước. Vì vậy cần biến ghi nhớ trạng thái. Khi