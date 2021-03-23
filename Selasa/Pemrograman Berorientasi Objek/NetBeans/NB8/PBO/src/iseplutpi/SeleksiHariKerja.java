package iseplutpi;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

/**
 * LATIHAN PERTEMUAN 6 SELEKSI HARI KERJA
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */
public class SeleksiHariKerja {
    public static void main(String[] args){
        BufferedReader InputData = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Program seleksi hari kerja dan hari libur");
        
        String hari = "";
        System.out.print("Silahkan masukan nama hari: ");
        try {
            hari = InputData.readLine();
        }catch (IOException e){
            System.out.println(e.getMessage());
        }
        
        hari = hari.toUpperCase();
        switch(hari){
            case "SENIN":
                System.out.println("Hari kerja");
            break;
            
            case "SELASA":
                System.out.println("Hari kerja");
            break;
            
            case "RABU":
                System.out.println("Hari kerja");
            break;
            
            case "KAMIS":
                System.out.println("Hari kerja");
            break;
            
            case "JUMAT":
                System.out.println("Hari kerja");
            break;
            
            case "SABTU":
                System.out.println("Hari libur");
            break;
            
            case "MINGGU":
                System.out.println("Hari libur");
            break;
            
            default:
                System.out.println("Hari yang anda masukan tidak terdaftar");
        }
    }
}
