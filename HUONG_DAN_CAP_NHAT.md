# 🚀 HƯỚNG DẪN ĐƯA CODE MỚI VÀO CHƯƠNG TRÌNH

## 📍 Trạng thái hiện tại
- ✅ Code đã được cập nhật với tối ưu hiệu suất
- ✅ Đã commit 2 lần:
  1. Nâng cấp ứng dụng Credit Risk với nhiều tính năng mới
  2. Tối ưu hiệu suất Streamlit - Giảm lag và tăng tốc độ
- ✅ Code đang ở branch: `claude/upgrade-credit-risk-model-011CUkxDu8QcJf5orAgwR5RJ`

---

## 🎯 CÁCH 1: Chạy trực tiếp từ Branch hiện tại (Khuyến nghị cho test)

### Bước 1: Đảm bảo đang ở branch đúng
```bash
git branch
# Phải thấy dấu * ở claude/upgrade-credit-risk-model-011CUkxDu8QcJf5orAgwR5RJ
```

### Bước 2: Pull code mới nhất (nếu cần)
```bash
git pull origin claude/upgrade-credit-risk-model-011CUkxDu8QcJf5orAgwR5RJ
```

### Bước 3: Chạy Streamlit
```bash
streamlit run ED.py
```

### Bước 4: Test các tính năng mới
- Upload file CSV training
- Thử chuyển Performance Mode: ⚡ Nhanh / 🎨 Cân bằng / 🖼️ Chất lượng cao
- Upload file Excel để xem phân loại PD 5 cấp độ
- Kiểm tra tốc độ (lần đầu chậm, lần sau nhanh)

---

## 🔀 CÁCH 2: Merge vào Main Branch (Để deploy chính thức)

### Bước 1: Fetch tất cả branches
```bash
git fetch --all
```

### Bước 2: Checkout về main/master branch
```bash
# Thử checkout main
git checkout main

# Nếu không có main, thử master
git checkout master

# Nếu không có cả 2, tạo mới
git checkout -b main
```

### Bước 3: Merge branch mới vào main
```bash
git merge claude/upgrade-credit-risk-model-011CUkxDu8QcJf5orAgwR5RJ
```

### Bước 4: Push lên remote
```bash
git push origin main
# Hoặc: git push origin master
```

### Bước 5: Chạy Streamlit từ main
```bash
streamlit run ED.py
```

---

## ☁️ CÁCH 3: Deploy lên Streamlit Cloud (Nếu đang dùng)

### Tùy chọn A: Deploy từ branch hiện tại
1. Truy cập: https://share.streamlit.io
2. Đăng nhập với tài khoản GitHub
3. Click "New app"
4. Chọn:
   - Repository: `truchuynh10121996-gif/NANG-CAP-MO-HINH`
   - Branch: `claude/upgrade-credit-risk-model-011CUkxDu8QcJf5orAgwR5RJ`
   - Main file path: `ED.py`
5. Click "Deploy"

### Tùy chọn B: Deploy từ main branch (Sau khi merge)
1. Merge code vào main theo CÁCH 2 ở trên
2. Truy cập: https://share.streamlit.io
3. Click "New app" hoặc update app hiện tại
4. Chọn:
   - Repository: `truchuynh10121996-gif/NANG-CAP-MO-HINH`
   - Branch: `main` (hoặc `master`)
   - Main file path: `ED.py`
5. Click "Deploy" hoặc "Reboot"

---

## 🔑 Cấu hình Secrets (Quan trọng!)

Nếu deploy lên Streamlit Cloud, cần thêm **GEMINI_API_KEY**:

### Trong Streamlit Cloud:
1. Vào app settings (⚙️)
2. Chọn tab "Secrets"
3. Thêm:
```toml
GEMINI_API_KEY = "your-api-key-here"
```
4. Save

### Trong máy local (.streamlit/secrets.toml):
```toml
GEMINI_API_KEY = "your-api-key-here"
```

---

## 📦 Requirements.txt

Đảm bảo file `requirements.txt` có đủ thư viện:

```txt
streamlit>=1.30.0
pandas>=2.0.0
numpy>=1.24.0
scikit-learn>=1.3.0
xgboost>=2.0.0
matplotlib>=3.7.0
seaborn>=0.12.0
openpyxl>=3.1.0
python-docx>=0.8.11
Pillow>=10.0.0
google-genai>=0.3.0
feedparser>=6.0.0
```

---

## ✅ Checklist Kiểm tra sau khi cập nhật

- [ ] Streamlit app chạy được không lỗi
- [ ] Upload file CSV training thành công
- [ ] Upload file Excel tính được chỉ số X1-X14
- [ ] Hiển thị PD với 5 cấp độ (AAA-AA, A-BBB, BB, B, CCC-D)
- [ ] Phần "Dự báo PD từ 4 Mô hình" nằm sau "Giải thích về Biểu đồ"
- [ ] Tab "Mục tiêu" có mô tả 14 biến X1-X14
- [ ] Tab "Xây dựng mô hình" có diagram Stacking
- [ ] Nút "Lên đầu trang" hiển thị và hoạt động
- [ ] Performance Mode selector hoạt động (3 chế độ)
- [ ] Lần chạy thứ 2 nhanh hơn lần đầu (có cache)
- [ ] "Phân tích ảnh hưởng đến quyết định vay" không ẩn biểu đồ
- [ ] Gemini AI hoạt động (nếu có API key)

---

## 🆘 Troubleshooting

### Lỗi: ModuleNotFoundError
```bash
pip install -r requirements.txt
```

### Lỗi: git merge conflict
```bash
# Hủy merge
git merge --abort

# Hoặc giải quyết conflict thủ công
git status  # Xem file conflict
# Sửa file, sau đó:
git add .
git commit -m "Resolve merge conflicts"
```

### App chạy chậm
- Thử chuyển Performance Mode sang "⚡ Nhanh"
- Clear cache: Bấm `C` trên bàn phím hoặc Settings → Clear cache
- Restart app: `Ctrl + C` rồi chạy lại `streamlit run ED.py`

### Gemini API không hoạt động
- Kiểm tra `secrets.toml` có `GEMINI_API_KEY` đúng không
- Thử test API key: https://aistudio.google.com/app/apikey

---

## 📞 Liên hệ

Nếu gặp vấn đề, hãy:
1. Check git status: `git status`
2. Check git log: `git log --oneline -5`
3. Check branch hiện tại: `git branch`
4. Báo lỗi cụ thể để được hỗ trợ

---

**Cập nhật lần cuối:** $(date +'%Y-%m-%d %H:%M:%S')
**Branch:** claude/upgrade-credit-risk-model-011CUkxDu8QcJf5orAgwR5RJ
