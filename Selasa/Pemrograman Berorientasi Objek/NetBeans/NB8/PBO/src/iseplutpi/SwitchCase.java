/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iseplutpi;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

/**
 * LATIHAN PERTEMUAN 5 5.4 DAN 5.5
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */
public class SwitchCase {
    public static void main(String[] args){
        BufferedReader InputData = new BufferedReader(new InputStreamReader
        (System.in));
        
        String angkaInput = null;
        System.out.println("masukan angka hari:");
        try {
            angkaInput = InputData.readLine();
        }catch (IOException e){
            System.out.println("Error");
        }
        int hari = Integer.parseInt(angkaInput);
        
        switch(hari){
            case 1:
                System.out.println("Minggu");
                break;
                
            case 2:
                System.out.println("Senin");
                break;
                
            case 3:
                System.out.println("Selasa");
                break;
                
            case 4:
                System.out.println("Rabu");
                break;
                
            case 5:
                System.out.println("Kamis");
                break;
                
            case 6:
                System.out.println("Jum'at");
                break;
                
            case 7:
                System.out.println("Sabtu");
                break;
                
            default:
                System.out.println("Kode hari yang anda masukan salah");
                
        }
    }
}
