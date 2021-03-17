Nama: Isep Lutpi Nur 
NPM: 2113191079 
Kelas: A2 
Tugas: LATIHAN PERTEMUAN 4
<hr>

##### Praktikum 3.1
###### Source code
``` java
package iseplutpi;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;


/**
 * LATIHAN PERTEMUAN 4 3.1
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
/**
 *
 * @author iseplutpi
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

```

###### Screenshot

![image-20210310091027864](D:\OneDrive\Dokumen\Kampus\Semester4\Selasa\Praktek Pemrograman Berorientasi Objek\05. Praktikum 4\image\image-20210310091027864.png)





##### Praktikum 3.2

###### Source code
``` java
package iseplutpi;
import javax.swing.JOptionPane;

/**
 * LATIHAN PERTEMUAN 4 3.2
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */
public class InputGui {
    public static void main(String[] args) {
    String nama = "";
    nama = JOptionPane.showInputDialog("Silahkan masukan nama anda:");
    String pan = "Nama saya " + nama;
    JOptionPane.showMessageDialog(null, pan);
    }
}

```

###### Screenshot

![image-20210310091057410](D:\OneDrive\Dokumen\Kampus\Semester4\Selasa\Praktek Pemrograman Berorientasi Objek\05. Praktikum 4\image\image-20210310091057410.png)

![image-20210310091112325](D:\OneDrive\Dokumen\Kampus\Semester4\Selasa\Praktek Pemrograman Berorientasi Objek\05. Praktikum 4\image\image-20210310091112325.png)