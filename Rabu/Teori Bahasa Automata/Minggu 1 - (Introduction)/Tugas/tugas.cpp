// Tugas automata minggu 1
// Kelompok
// Isep Lutpi Nur (2113191079)
// Farhan aziz (2113191097)

#include <iostream>
using namespace std;

int main()
{
    // Deklarasi variable
    string str, str1, str2, str3, res, res1 = "";

    // Length
    cout << "Masukan string yang akan dihitung: ";
    cin >> str;
    cout << str << " => hasil|"
         << str << "| = "
         << str.length() << "\n\n";

    // Concate
    cout << "Masukan string pertama: ";
    cin >> str1;
    cout << "Masukan string Kedua: ";
    cin >> str2;
    res = str1 + str2;
    cout << str1 << " + "
         << str2 << " => "
         << res << "\n\n";

    // reserve atau membalikan string
    cout << "Masukan string yang akan dibalik: ";
    cin >> str3;

    // Array dimulai dari 0
    for (int i = str3.length() - 1; i >= 0; i--)
    {
        res1 += str3[i];
        cout << str3[i] << endl;
    }
    cout << str3 << " = " << res1 << endl;

    return 0;
}
