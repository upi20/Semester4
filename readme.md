### Jadwal Kuliah


|No|Matakuliah|Hari|Masuk|Keluar|Dosen|
|--- |--- |--- |--- |--- |--- |
|1|Database Management System|Senin|07:00|08:40|Gunawan, ST., M.Kom., MOS|
|2|Praktek Database Management System|Senin|08:40|09:30|Gunawan, ST., M.Kom., MOS|
|3|Rekayasa Perangkat Lunak|Senin|09:30|12:00|Dhany Indra Gunawan, ST.,M.Kom|
|4|Manajemen Proyek Teknologi Informasi|Selasa|09:30|11:10|Phitsa Mauliana, MM.,M.Kom|
|5|Pemrograman Berorientasi Objek|Selasa|07:00|08:40|Toni Arifin, ST.,M.Kom|
|6|Praktek Pemrograman Berorientasi Objek|Selasa|08:40|09:30|Toni Arifin, ST.,M.Kom|
|7|Teori Bahasa Automata|Rabu|09:30|11:10|Gunawansyah, ST.,M.Kom|
|8|Pemrograman Web|Rabu|12:50|14:30|Teguh Wiharko, ST., MT.|
|9|Praktek Pemrograman Web|Rabu|14:30|16:10|Teguh Wiharko, ST., MT.|
|10|Internet of Things|Kamis|07:00|08:40|Bambang Sugiarto, ST.,MT|
|11|Multimedia|Kamis|09:30|12:00|Dhema Yunautama,ST.,M.Kom|
|12|Sistem Pendukung Keputusan|Kamis|12:50|15:20|Riffa Haviani Laluma, S.Kom.,MT.|

<div style="page-break-after: always; break-after: page;"></div>



### Hitung total angsuran bulanan di SIA

``` javascript
// calculate
let total = 0;
let datas = document.querySelectorAll("[class=text-right]");
let result = 0;
datas.forEach((data) => {
    total += Number(data.textContent.replaceAll(',', ''));
    let bilangan = total;
    let reverse = bilangan.toString().split('').reverse().join(''),
        ribuan = reverse.match(/\d{1,3}/g);
    result = ribuan.join('.').split('').reverse().join('');
})


// add new row
const tbodyRef = document.getElementsByTagName('table')[1].getElementsByTagName('tbody')[0];

// Insert a row at the end of table
let newRow = tbodyRef.insertRow();

// render collumn
newRow.insertCell().appendChild(document.createTextNode(`#`));
newRow.insertCell().appendChild(document.createTextNode(`Jumlah Total`));
newRow.insertCell().appendChild(document.createTextNode(``));
newRow.insertCell().appendChild(document.createTextNode(result));
newRow.insertCell().appendChild(document.createTextNode(``));

// change result columnt align right
newRow.getElementsByTagName('td')[3].style.textAlign = "right";
```

<div style="page-break-after: always; break-after: page;"></div>


#### 1. Masuk ke halaman riwayat pembayaran

Klik tombol menu -> MAHASISWA -> RIWAYAT PEMBAYARAN

<img src="zz-img\hitung-angsuran\image-20210204182407308.png">

#### 2.  Masuk Ke Console

##### A. Klik mouse kanan -> Inspect -> Console

<img src="zz-img\hitung-angsuran\image-20210204182605798.png">

<img src="zz-img\hitung-angsuran\image-20210204182634504.png">

##### B. Tekan Ctrl + Shift + I atau tekan F12 

#### 3.  Copy code dan paste code

##### A. Copy code yang sudah disediakan dan paste di console.

<img src="zz-img\hitung-angsuran\image-20210204184716448.png">

##### B. Lalu tekan enter

Bisa keluar dari console dengan tekan X di pojik kanan

<img src="zz-img\hitung-angsuran\image-20210204183122007.png">

#### 4. Selesai.

Selesai dan lihat hasilnya di baris paling bawah.

<img src="zz-img\hitung-angsuran\image-20210204184443274.png">



