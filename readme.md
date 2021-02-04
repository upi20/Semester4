### Jadwal Kuliah


|#|Matakuliah|Hari|Jam Masuk|Jam Keluar|Dosen|
|--- |--- |--- |--- |--- |--- |
|1|Statistika|Rabu|12:50|14:30|Rizal Rachman, S.Si.,MM., M.Kom|
|2|Interaksi Manusia & Komputer|Kamis|08:40|10:20|DR. Teguh Nurhadi Suharsono,ST.,MT|
|3|Pemrograman Desktop|Senin|07:00|08:40|Slamet Risnanto, ST.,M.Kom|
|4|Praktek Pemrograman Desktop|Rabu|16:10|17:50|Slamet Risnanto, ST.,M.Kom|
|5|Komunikasi Data|Selasa|12:50|14:30|Nanang Hunaifi, ST.,MM|
|6|Pemodelan Sistem Berorentasi Objek|Selasa|15:20|17:50|Phitsa Mauliana, MM.,M.Kom|
|7|Basis Data|Senin|12:50|15:20|Riffa Haviani Laluma, S.Kom.,MT.|
|8|Kewirausahaan|Selasa|07:00|09:30|Ir. S.W. Pitara, MT.|



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