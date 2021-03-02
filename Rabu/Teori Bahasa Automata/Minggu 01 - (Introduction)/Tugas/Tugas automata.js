{
    try {
        /*
            const, let merupakan keyword deklarasi variable dalam javascript
            const nilainya konstant tidak bisa diubah
            let nilainya bisa diubah
            dalam javascript tipe data variable bersifat dimamis

            prompt() fungsi dalam javascript yang digunakan untuk mengambil inputan dari user
            alert() untuk menampilkan pesan kepada user
        */
        // Menambil inputan untuk menghitung panjang string
        const str = prompt("Masukan kalimat atau number");
        alert(`${str} => hasil|${str}| = ${str.length}`);

        // Mengambil inputan untuk concate (menghubungkan) string
        const str1 = prompt("Masukan kalimat pertama");
        const str2 = prompt("Masukan kalimat kedua");
        // concate dalam javascript menggunakan symbol "+"
        const res = str1 + str2;
        alert(`${str1} + ${str2} => ${res}`);

        //  mengambil inputan untuk string yang akan dibalik
        const str3 = prompt("Masukan kalimat yang akan dibalik");
        // Deklarasi string kosong untuk hasil
        let res1 = "";

        // Menggunakan looping terbali untuk membalik string
        for (let i = str3.length - 1; i >= 0; i--) {
            res1 += str3[i];
        }

        // Menampilkan hasil
        alert(`${str3} => ${res1}`);
    } catch (error) {
        console.log(error);
    }

}