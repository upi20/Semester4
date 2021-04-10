/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package IsepLutpi.Other;

/**
 *
 * @author IsepLutpi.Other
 */
public class IntToStringRoman {
    public static void main(String[] args){
        System.out.println(convert(9654));
    }
    
    public static String convert(int n){
        int z = n;
        String result = "";
        
        if(z >= 1000){
            int a = z % 1000;
            int b = z - a;
            int c = b / 1000;
            for(int i = 0; i < c; i++){
                result += "M";
            }
            z = a;
        }
        
        if (z >= 500 && z < 1000) {
            int a = z % 500;
            int b = z - a;
            int c = b / 500;
            for(int i = 0; i < c; i++){
                result += "D";
            }
            z = a;
        }
        
        if (z >= 100 && z < 500) {
            int a = z % 100;
            int b = z - a;
            int c = b / 100;
            for(int i = 0; i < c; i++){
                result += "C";
            }
            z = a;
        }
        
        if (z >= 50 && z < 100) {
            int a = z % 50;
            int b = z - a;
            int c = b / 50;
            for(int i = 0; i < c; i++){
                result += "L";
            }
            z = a;
        }
        
        if (z >= 10 && z < 50) {
            int a = z % 10;
            int b = z - a;
            int c = b / 10;
            for(int i = 0; i < c; i++){
                result += "X";
            }
            z = a;
        }
        
        if (z == 9) {
            result += "IX";
            z -= 9;
        }

        if (z >= 5 && z < 9) {
            int a = z % 5;
            int b = z - a;
            int c = b / 5;
            for(int i = 0; i < c; i++){
                result += "V";
            }
            z = a;
        }
        
        if (z == 4) {
            result += "IV";
            z -= 4;
        }

        if (z >= 1 && z < 4) {
            for(int i = 0; i < z; i++){
                result += "I";
            }
        }
        
        return result;
    }
}
