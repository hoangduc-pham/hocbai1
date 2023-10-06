Khai báo lớp Transaction:
Lớp Transaction được sử dụng để biểu diễn một giao dịch tài chính.
Nó có hai thuộc tính: title (tên giao dịch) và amount (số tiền).
Một constructor được sử dụng để tạo một đối tượng Transaction với giá trị cho title và amount.

Trong phần này, bạn sử dụng một widget Column để hiển thị danh sách các giao dịch.
transactions.map((tx) { ... }) biến đổi danh sách transactions thành danh sách các widget Card chứa thông tin về mỗi giao dịch.
Mỗi giao dịch được hiển thị bằng một widget Card chứa một ListTile với biểu tượng tiền, tên giao dịch và số tiền.
