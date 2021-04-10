/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package IsepLutpi.Praktikum.Praktikum2;

/**
 * Nama: Isep Lutpi Nur
 * NPM : 2113191079
 * Kelas : A2
 * Praktikum 2.4
 */
public class OperatorLogika {
    public static void main(String[] args){
        int y = 40;
        int x = 80;
        boolean tes1;
        boolean tes2;
        
        tes1 = (y>40) && (x<100);
        System.out.println("Hasil tes1: " + tes1);
        
        tes2 = (y>40) || (x<100);
        System.out.println("Hasil tes2: " + tes2);
    }
}
