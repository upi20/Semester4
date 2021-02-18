/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iseplutpi;

/**
 * Nama: Isep Lutpi Nur
 * NPM : 2113191079
 * Kelas : A2
 */
public class Bilangan {
    public static void main(String[] args) {
        int a = 100, b = 30; // nilai variable A dan B
        
        int jumlah = a+b; // operasi penjumlahan
        int kurang = a-b; // operasi pengurangan
        int kali = a*b; // operasi perkalian
        float bagi = (float)a/b; // operasi pembagian
        
        
        // Menampilkan hasil
        System.out.println("Penjumlahan " + a + " + " + b + " = " + jumlah);
        System.out.println("Pengurangan " + a + " - " + b + " = " + kurang);
        System.out.println("Perkalian " + a + " * " + b + " = " + kali);
        System.out.println("Pembagian " + a + " / " + b + " = " + bagi);
    }
}
