CREATE TABLE `mahasiswa` (
    `id` int(11) NOT NULL,
    `nama` varchar(100) NOT NULL,
    `npm` varchar(10) NOT NULL,
    `jurusan` varchar(50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO
    `mahasiswa` (`id`, `nama`, `npm`, `jurusan`)
VALUES
    (2, 'Vakrun Nisah', '2113191057', 'Teknik Sipil'),
    (
        4,
        'Deri Kurniawan',
        '2113191064',
        'Teknik Sistem Informasi'
    ),
    (
        5,
        'Razan Aiman Nadir',
        '2113191062',
        'Teknik Sipil'
    ),
    (6, 'Rivan Kurnia', '2113191092', 'Teknik Mesin'),
    (
        7,
        'Dara Atria Ferliandini',
        '2113191098',
        'Teknik Informatika'
    ),
    (8, 'Yunita', '2113191102', 'Teknik Informatika'),
    (
        9,
        'Alam Nurzaman',
        '2113191108',
        'Teknik Informatika'
    ),
    (
        10,
        'Iman Faturahman',
        '2113191080',
        'Teknik Informatika'
    ),
    (
        11,
        'Irham Permana',
        '2113191044',
        'Teknik Mesin'
    ),
    (
        12,
        'Farhan Aziz',
        '2113191097',
        'Teknik Informatika'
    ),
    (
        13,
        'Irfan Ramdani',
        '2113191069',
        'Teknik Informatika'
    ),
    (
        26,
        'Fajar Nuralamsyah',
        '2113191099',
        'Teknik Informatika'
    ),
    (
        28,
        'Fajar Ramadhani',
        '2113191077',
        'Teknik Informatika'
    ),
    (
        57,
        'Isep Lutpi Nur',
        '2113191079',
        'Teknik Informatika'
    ),
    (
        58,
        'Adistia Ramadhani',
        '2113191078',
        'Teknik Informatika'
    );

ALTER TABLE
    `mahasiswa`
ADD
    PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `npm` (`npm`);

ALTER TABLE
    `mahasiswa`
MODIFY
    `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 59;