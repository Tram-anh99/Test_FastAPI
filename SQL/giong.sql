-- Xóa các bảng nếu đã tồn tại để tránh lỗi
DROP TABLE IF EXISTS giong_bao_ho;
DROP TABLE IF EXISTS giong_luu_hanh;
DROP TABLE IF EXISTS nguon_gen;

-- Bảng 1: Thông tin về giống được bảo hộ
CREATE TABLE giong_bao_ho (
    id SERIAL PRIMARY KEY,
    so_bang VARCHAR(50),
    ma_giong VARCHAR(50),
    ten_giong VARCHAR(255),
    ten_loai VARCHAR(255),
    ten_chu_so_huu TEXT,
    ngay_hieu_luc TIMESTAMP,
    tinh_trang_bang VARCHAR(100)
);

-- Bảng 2: Thông tin về giống cây trồng được lưu hành
CREATE TABLE giong_luu_hanh (
    id SERIAL PRIMARY KEY,
    ten_giong VARCHAR(255),
    loai_cay_trong VARCHAR(255),
    hinh_thuc_cong_bo VARCHAR(255),
    loai_cay VARCHAR(255),
    to_chuc_dang_ky TEXT,
    pham_vi_luu_hanh TEXT,
    tinh_thanh_pho TEXT,
    ngay_quyet_dinh DATE,
    ngay_co_hieu_luc DATE
);

-- Bảng 3: Thông tin về nguồn gen
CREATE TABLE nguon_gen (
    gbvn_no VARCHAR(50) PRIMARY KEY,
    nhom VARCHAR(100),
    ten_cay_trong VARCHAR(255),
    ten_nguon_gen VARCHAR(255),
    ten_khoa_hoc VARCHAR(255),
    co_quan_luu_tru TEXT,
    noi_thu_thap VARCHAR(255),
    nam_thu_thap INTEGER,
    nguon TEXT,
    ghi_chu TEXT
);