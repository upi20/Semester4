-- 1
ALTER TABLE
	mahasiswa
MODIFY
	(
		nama VARCHAR2(20) CONSTRAINT nama_mhs_nn NOT NULL,
		tgl_lahir DATE CONSTRAINT tgllhr_mhs_nn NOT NULL
	);

-- 2
SELECT
	*
FROM
	user_constraints
WHERE
	table_name = 'MAHASISWA';

-- 3
ALTER TABLE
	mahasiswa
MODIFY
	(
		kota_asal NUMBER (8) CONSTRAINT kota_mhs_uni UNIQUE
	);

-- 4 drop karena sudah ada
ALTER TABLE
	MAHASISWA DROP CONSTRAINT FK_MAHASISWA_KOTA;

-- 5
CREATE TABLE pengambilan_mk (
	nim NUMBER(8),
	kd_matkul VARCHAR2(6),
	semester NUMBER(1),
	thn_ajaran VARCHAR2(9),
	nilai CHAR(1),
	CONSTRAINT pk_pengambilan_mk PRIMARY KEY(nim, kd_matkul, semester, thn_ajaran)
);

-- 6 Mendefinisikan column “nim” sebagai Foreign Key
ALTER TABLE
	pengambilan_mk
ADD
	CONSTRAINT fk_pengambilanmk_mhs FOREIGN KEY (nim) REFERENCES mahasiswa(nim) ON DELETE CASCADE;

-- 7 Membuat table “matkul” lengkap dengan constraint Primary Key
CREATE TABLE matkul (
	kd_matkul VARCHAR2(6) CONSTRAINT pk_matkul PRIMARY KEY,
	nama_matkul VARCHAR2(30),
	semester NUMBER(1),
	sks NUMBER(1)
);

-- 8 Mendefinisikan column “kd_matkul” sebagai Foreign Key
ALTER TABLE
	pengambilan_mk
ADD
	CONSTRAINT fk_pengambilanmk_matkul FOREIGN KEY (kd_matkul) REFERENCES matkul(kd_matkul) ON DELETE
SET
	NULL;

-- 9 Check constraint
-- Pilihan 1
ALTER TABLE
	matkul
ADD
	CONSTRAINT sks_min CHECK (sks > 0);

ALTER TABLE
	matkul
ADD
	CONSTRAINT sks_min2 CHECK (sks < 5);

-- Pilihan 2
ALTER TABLE
	matkul
ADD
	CONSTRAINT sks_min3 CHECK (
		(sks < 5)
		AND (sks > 0)
	);

-- Delete constrain
ALTER TABLE
	[nama table] CONSTRAINT [nama constrain];