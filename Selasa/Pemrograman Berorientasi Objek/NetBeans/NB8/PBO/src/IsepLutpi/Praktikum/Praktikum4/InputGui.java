package IsepLutpi.Praktikum.Praktikum4;
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
