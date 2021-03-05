package iseplutpi;

/**
 * Nama: Isep lutpi nur
 * NPM: 2113191079
 * Tugas: Praktikum 3
 */
public class LatihanPertemuan3 {
    public static void main(String[] args){
        // Program 1
        System.out.println("Program 1");
        int harga_sebelum_diskon = 10000;
        double diskon = harga_sebelum_diskon * 0.1;
        int harga_setelah_diskon = harga_sebelum_diskon - (int)diskon;
        System.out.println("Harga barang sebelum diskon: Rp. " + harga_sebelum_diskon);
        System.out.println("Diskon: 10%");
        System.out.println("Harga barang setelah diskon: Rp. " + harga_setelah_diskon);
        
        
        
        // Program 2
        System.out.println("\n\nProgram 2");
        int n1 = 10, n2 = 15;
        int h1 = (n1 + n2) * (n2 + n1);
        System.out.println("h1: " + h1);

        int sisa_bagi = n1 % 4;
        int h2 = sisa_bagi * n2;
        System.out.println("h2: " + h2);
                
        
        
        // Program 2
        System.out.println("\n\nProgram 2");
        boolean b1 = h1 >= h2;
        System.out.println("h1: " + b1);
        boolean b2 = h2 >= h1;
        System.out.println("h2: " + b2);
        boolean b3 = (h1 % 4) == (++h2 % 5);
        System.out.println("h3: " + b3);
        boolean b4 = (b1 ^ b3) && (b2 || b3);
        System.out.println("h4: " + b4);
        boolean b5 =  b2 || (b3 && (b2 ^ b1));
        System.out.println("h5: " + b5);
    }
}
