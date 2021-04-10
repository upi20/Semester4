package IsepLutpi.Prakitkum6.Prakitkum6;

/**
 * PRAKTIKUM (PERTEMUAN 6) 6.5
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */
public class PernyataanContinue {
    public static void main(String[] args){
        int i = 1;
        while(i<11){
            if(i == 7){
                i++;
                continue;
            }
            System.out.println("Nilai i: "+i);
            i++;
        }
    }
}
