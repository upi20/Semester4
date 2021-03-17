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

