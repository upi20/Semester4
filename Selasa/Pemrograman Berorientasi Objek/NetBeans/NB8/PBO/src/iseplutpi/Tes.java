/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package iseplutpi;

/**
 *
 * @author iseplutpi
 */
public class Tes {
    public static void main(String[] args){
        int a = 10;
        int b = 20;
        int selisih = b-a;
        int hasil = 0;
        if (selisih >= 3){
            hasil = (selisih - 3) * 1000;
        }
        System.out.println("hasil :" + hasil);
    }
}
