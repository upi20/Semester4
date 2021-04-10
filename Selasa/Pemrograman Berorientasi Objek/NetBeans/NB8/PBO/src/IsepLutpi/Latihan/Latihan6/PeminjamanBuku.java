package IsepLutpi.Latihan.Latihan6;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;
/**
 * LATIHAN PERTEMUAN 6 PEMINJAMAN BUKU
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */

public class PeminjamanBuku {
    public static void main(String[] args){
        BufferedReader InputData = new BufferedReader(new InputStreamReader(System.in));
        String input = "";
        
        int tglKembali = 0, blnKembali = 0, thnKembali = 0, tglPinjam = 0, blnPinjam = 0, thnPinjam = 0;
        int selisih, selisihTgl, selisihBln, selisihThn, denda;
        String kodeBuku = "";
        
        System.out.print("Masukan kode buku: ");
        try {
            kodeBuku = InputData.readLine();
        }catch (IOException e){
            System.out.println(e.getMessage());
        }
        
    
        System.out.println("Masukan waktu pinjam:");
        try {
            System.out.print("Tanggal:");
            input = InputData.readLine();
            tglPinjam = Integer.parseInt(input);
        }catch (IOException e){
            System.out.println(e.getMessage());
        }

        try {
            System.out.print("Bulan:");
            input = InputData.readLine();
            blnPinjam = Integer.parseInt(input);
        }catch (IOException e){
            System.out.println(e.getMessage());
        }

        try {
            System.out.print("Tahun:");
            input = InputData.readLine();
            thnPinjam = Integer.parseInt(input);
        }catch (IOException e){
            System.out.println(e.getMessage());
        }

        System.out.println("Masukan waktu Kembali:");
        try {
            System.out.print("Tanggal:");
            input = InputData.readLine();
            tglKembali = Integer.parseInt(input);
        }catch (IOException e){
            System.out.println(e.getMessage());
        }

        try {
            System.out.print("Bulan:");
            input = InputData.readLine();
            blnKembali = Integer.parseInt(input);
        }catch (IOException e){
            System.out.println(e.getMessage());
        }

        try {
            System.out.print("Tahun:");
            input = InputData.readLine();
            thnKembali = Integer.parseInt(input);
        }catch (IOException e){
            System.out.println(e.getMessage());
        }
        selisihThn = (thnKembali - thnPinjam) * 365;
        selisihBln = (blnKembali - blnPinjam) * 30;
        selisihTgl = (tglKembali - tglPinjam);
        selisih = (selisihThn + selisihBln + selisihTgl);
        
        denda = (selisih >= 3) ? (selisih - 3) * 1000 : 0;
       
        System.out.printf("Kode buku: %s\n", kodeBuku);
        System.out.printf("Tanggal pinjam: %d/%d/%d \n", tglPinjam, blnPinjam, thnPinjam);
        System.out.printf("Tanggal Kembali: %d/%d/%d \n", tglKembali, blnKembali, thnKembali);
        System.out.printf("Denda: Rp. %d,- \n", denda );
    }
}
