/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package IsepLutpi.Praktikum.Praktikum5;

/**
 * LATIHAN PERTEMUAN 5 5.3
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */
public class IfBersarang {
   public static void main(String[] args){
       int nilai_angka = 60;
       if (nilai_angka>= 85 && nilai_angka <= 100) {
           System.out.println("Nilai huruf A");
       } else if (nilai_angka>= 70 && nilai_angka < 85) {
           System.out.println("Nilai huruf B");
       } else if (nilai_angka>= 55 && nilai_angka < 70) {
           System.out.println("Nilai huruf C");
       } else if (nilai_angka>= 50 && nilai_angka < 55) {
           System.out.println("Nilai huruf D");
       } else {
           System.out.println("Nilai huruf E");
       }
   } 
}
