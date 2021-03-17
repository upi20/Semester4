package iseplutpi;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;


/**
 * LATIHAN PERTEMUAN 4 3.1
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */
public class Input {
    public static void main(String[] args){
        BufferedReader InputData = new BufferedReader(new InputStreamReader(System.in));
        String nama = "";
        System.out.println("masukan nama anda:");
        try {
            nama = InputData.readLine();
        }catch (IOException e){
            System.out.println(e.getMessage());
        }
        System.out.println("Nama Saya: " + nama);
        
    }
}
