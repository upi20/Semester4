### Jadwal Kuliah


|#|Matakuliah|Hari|Jam Masuk|Jam Keluar|Dosen|
|--- |--- |--- |--- |--- |--- |
|1|Database Management System|Senin|07:00|08:40|Gunawan, ST., M.Kom., MOS|
|2|Praktek Database Management System|Senin|08:40|09:30|Gunawan, ST., M.Kom., MOS|
|3|Rekayasa Perangkat Lunak|Senin|09:30|12:00|Dhany Indra Gunawan, ST.,M.Kom|
|4|Pemrograman Web|Rabu|12:50|14:30|Teguh Wiharko, ST., MT.|
|5|Praktek Pemrograman Web|Rabu|14:30|16:10|Teguh Wiharko, ST., MT.|
|6|Manajemen Proyek Teknologi Informasi|Selasa|09:30|11:10|Phitsa Mauliana, MM.,M.Kom|
|7|Pemrograman Berorientasi Objek|Selasa|07:00|08:40|Toni Arifin, ST.,M.Kom|
|8|Praktek Pemrograman Berorientasi Objek|Selasa|08:40|09:30|Toni Arifin, ST.,M.Kom|
|9|Internet of Things|Kamis|07:00|08:40|Bambang Sugiarto, ST.,MT|
|10|Teori Bahasa Automata|Rabu|09:30|11:10|Gunawansyah, ST.,M.Kom|
|11|Multimedia|Kamis|09:30|12:00|Dhema Yunautama,ST.,M.Kom|
|12|Sistem Pendukung Keputusan|Kamis|12:50|15:20|Riffa Haviani Laluma, S.Kom.,MT.|




##### Hitung total angsuran bulanan di SIA

``` javascript
let total = 0;
let datas = document.querySelectorAll("[class=text-right]");
datas.forEach((data,i)=>{
    total += Number(data.textContent.replaceAll(',',''));


var 	bilangan = total;
var	reverse = bilangan.toString().split('').reverse().join(''),
	ribuan 	= reverse.match(/\d{1,3}/g);
	ribuan	= ribuan.join('.').split('').reverse().join('');

// Cetak hasil	
console.log("Rp. " + ribuan); // Hasil: 23.456.789
})


```
