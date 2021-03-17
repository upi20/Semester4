Nama: Isep Lutpi Nur 
NPM: 2113191079 
Kelas: A2 
Tugas: LATIHAN PERTEMUAN 4
<hr>

### Program 1
#### Source code
``` java
package iseplutpi;
/**
 * LATIHAN PERTEMUAN 4
 * NAMA: ISEP LUTPI NUR
 * NPM: 2113191079
 * KELAS: A2
 */
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JPanel;
import javax.swing.JLabel;
import java.awt.GridLayout;

public class InputDataMahasiswa {
    public static void main(String[] args) {
    JTextField nama = new JTextField();
    JTextField nim = new JTextField();
    JTextField jurusan = new JTextField();

    JPanel myPanel = new JPanel();
    myPanel.setLayout(new GridLayout(0, 1));
    myPanel.add(new JLabel("Nama:"));
    myPanel.add(nama);
    myPanel.add(new JLabel("NIM:"));
    myPanel.add(nim);
    myPanel.add(new JLabel("Jurusan:"));
    myPanel.add(jurusan);

    int result = JOptionPane.showConfirmDialog(null, myPanel,
        "Masukan data mahasiswa", JOptionPane.OK_CANCEL_OPTION);
    if (result == JOptionPane.OK_OPTION) {
        String message = "Hallo " + nama.getText() 
                + ", NIM anda " + nim.getText()
                + ", anda adalah mahasiswa jurusan " + jurusan.getText();
        JOptionPane.showMessageDialog(null, message);
    }
  }
}
```

#### Screenshot program
##### Input

<img src="image\image-20210309091235294.png">

##### Output

<img src="image\image-20210309091243981.png">







### Program 2

#### Source code

``` java
package iseplutpi;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;


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
                System.out.println(a + " + " + b + " = " + (a+b));
            break;

            case 2:
                System.out.println(a + " - " + b + " = " + (a-b));
            break;

            case 3:
                System.out.println(a + " x " + b + " = " + (a*b));
            break;

            case 4:
                System.out.println(a + " / " + b + " = " + (a/b));
            break;

            case 5:
                System.out.println(a + " % " + b + " = " + (a%b));
            break;
            
            default:
                System.out.println("Pilihan anda tidak tersedia silahkan diulangi");
        }
        
    }
}

```

#### Screenshot program

<img src="image\image-20210309091826230.png">