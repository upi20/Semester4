package IsepLutpi.Latihan.Latihan4;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;
import javax.swing.JOptionPane;


/**
 * LATIHAN PERTEMUAN 4
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */
public class FungsiAritmatik {
    public static void main(String[] args){
        BufferedReader InputData = new BufferedReader(new InputStreamReader(System.in));
        int a = 0, b = 0, operator = 0;
        System.out.println("Kalkulator");
        
        System.out.print("Masukan angka pertama: ");
        try {
            a = Integer.parseInt(InputData.readLine());
        }catch (IOException e){
            System.out.println(e.getMessage());
        }
        
        System.out.print("masukan angka kedua: ");
        try {
            b = Integer.parseInt(InputData.readLine());
        }catch (IOException e){
            System.out.println(e.getMessage());
        }

        System.out.println("Pilih operasi aritmatika: ");
        System.out.println("1. Pertambahan");
        System.out.println("2. Pengurangan");
        System.out.println("3. Perkalian");
        System.out.println("4. Pembagian");
        System.out.println("5. Sisa bagi");
        System.out.print("Pilihan: ");
        try {
            operator = Integer.parseInt(InputData.readLine());
        }catch (IOException e){
            System.out.println(e.getMessage());
        }
        
        switch(operator){
            case 1:
                JOptionPane.showMessageDialog(null,a + " + " + b + " = " + (a+b));
            break;

            case 2:
                JOptionPane.showMessageDialog(null,a + " - " + b + " = " + (a-b));
            break;

            case 3:
                JOptionPane.showMessageDialog(null,a + " x " + b + " = " + (a*b));
            break;

            case 4:
                JOptionPane.showMessageDialog(null,a + " / " + b + " = " + (a/b));
            break;

            case 5:
                JOptionPane.showMessageDialog(null,a + " % " + b + " = " + (a%b));
            break;
            
            default:
                JOptionPane.showMessageDialog(null,"Pilihan anda tidak tersedia silahkan diulangi");
        }
        
    }
}
