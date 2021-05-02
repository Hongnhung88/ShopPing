create database shop_ping;

create table if not exists `tblusers` (
  `id` int(11) NOT null auto_increment primary key, -- là khoá chính tự tăng ko đc trống
  `FullName` varchar(120),
  `EmailId` varchar(100),
  `Password` varchar(100),
  `ContactNo` char(11),
  `dob` varchar(100),
  `Address` varchar(255),
  `City` varchar(100),
  `Country` varchar(100) ,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
);

create table if not exists `tblAdmin`
(
	`id` int not null primary key  auto_increment, -- là khoá chinh giá trị tự tăng không được trống
	`username` varchar(256), -- cho độ dài 256 
	`password` varchar(256),
	`create_date` timestamp
);

create table if not exists `tblHangGiay`
(
	`id` int not null primary key auto_increment,
	`tenHang` varchar(256)
);

create table if not exists `tblGiay`
(
	`id` int not null primary key auto_increment,
	`idHangGiay` int not null,
	`tenGiay` varchar(256),
	`giaBan` int not null default 0, -- gia ban mặc định là 0 neu ko set gia tri
	`sale` int default 0, 
	`moTa` text, -- cai nay de viet mo ta cho giay
	`anhGiay` varchar(256),
	constraint hang_giay_FK
	foreign key (idHangGiay) references tblHangGiay(id)
);

create table if not exists `tblSize`
(
	`id` int not null primary key auto_increment,
	`size` int
);

create table if not exists `tblKho`( -- kiem tra so luong ton kho va da ban
	`idGiay` int not null,
	`idSize` int not null,
	`nhap` int default 0,
	`ban` int default 0,
	primary key (`idGiay`,`idSize`),
	constraint giay_kho_FK 
	foreign key (`idGiay`) references tblGiay(id),
	constraint size_kho_FK 
	foreign key (`idSize`) references tblSize(id)
);

create table if not exists `tblKienThucGiay`
(
	`id` int not null primary key auto_increment,
	`tieuDe` varchar(256), -- tieu de kien thuc
	`moTa` text, -- kieu text 
	`anhKienThuc` varchar(256)
);

create table if not exists `tblPhuKien`
(
	`id` int not null primary key auto_increment,
	`tenPhuKien` varchar(256),
	`anhPhuKien` varchar(256),
	`giaBan` int default 0
);

create table tblTrangThai(
	id int auto_increment primary key,
	idgiay int,
	giayMoi int default 0,
	giayBanChay int default 0,
	constraint giay_trangthai_FK
	foreign key (idgiay) references tblgiay(id)
)

-- gio hang 
create table if not exists `tblGioHang`
(
	`id` int not null primary key auto_increment,
	`idUser` int not null,
	`tongTien` int default 0,
	`ngayDatHang` timestamp not null,
	`ngayGiaoHang` timestamp not null,
	`tinhTrang` int default 0, -- 0 đã nhận đặt hàng, 1 đang giao, 2 đã giao, 3 bị đổi trả, 4 dã thanh toán kết thúc lưu đơn hàng, 5 huỷ đơn ...
	 constraint User_GioHang_FK
	 foreign key (`idUser`) references tblusers(`id`)
);

create table if not exists `tblChiTietGioHang`
(
	`id` int not null primary key auto_increment,
	`idGioHang` int not null,
	`idGiay` int not null default 0, -- mac dinh la 0 neu ban phu kien
	`idPhuKien` int not null default 0, -- mac dinh la 0 neu ban giay 
	`giaBan` int default 0, -- gia ban cuối sau khi đã tính toán sale
	`soLuong` int default 1, -- mac dinh la mua 1 doi giay
	`size` int,
	constraint chiTiet_GioHang_FK
	foreign key (`idGioHang`) references tblGioHang(`id`)
);
-- con 2 truong la idGiay va idPhuKien khong duoc tao khoa ngoai vi truong hop ngoai le ban giay ko ban phu kien, ban phu kien ko 