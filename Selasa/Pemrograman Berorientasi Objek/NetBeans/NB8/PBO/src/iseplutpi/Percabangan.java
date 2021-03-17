/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iseplutpi;

/**
 * LATIHAN PERTEMUAN 5 5.2
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */
public class Percabangan {
    public static void main(String[] args){
        int totalbelanja = 100000;
        int jml_brg_dibeli = 2;
        double diskon = 0.25;
        double hrg_brg_stlh_diskon;
        
        if(totalbelanja > 50000 && jml_brg_dibeli>1){
            hrg_brg_stlh_diskon = totalbelanja - (totalbelanja*diskon);
            System.out.println("Harga barang setelah diskon " + hrg_brg_stlh_diskon);
        }else{
            System.out.println("Maaf anda belum dapat diskon");
        }
    }
}
