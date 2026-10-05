program kalkulatorsederhana;
uses crt;
var 
    a, b, hasil: integer;
    c, d, hasilreal : real;
    pilihan, lanjut: char;
begin
    clrscr;

    // perulangan kalkulator sederhana akan berhenti ketika lanjut = T
    repeat
        writeln('Kalkulator Sederhana');
        writeln('1. Penjumlahan');
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian');
        writeln('5. DIV dan MOD');
        write('Pilih operasi (1-5): ');
        readln(pilihan);

        if (pilihan = '4') then
        begin
            write('Masukkan angka pertama: ');
            readln(c);
            write('Masukkan angka kedua: ');
            readln(d);
        end
        else
        begin
            write('Masukkan angka pertama: ');
            readln(a);
            write('Masukkan angka kedua: ');
            readln(b);
        end;

        case pilihan of
            '1': writeln('Hasil: ', a + b);
            '2': writeln('Hasil: ', a - b);
            '3': writeln('Hasil: ', a * b);
            '4': 
                begin
                if d = 0 then
                    writeln('Error: Pembagian dengan nol tidak diperbolehkan.')
                else
                begin
                    hasilreal := c / d;
                    writeln('Hasil: ', hasilreal:0:2);
                end;
                end;
            '5':
                begin
                    if b <> 0 then
                    begin
                        writeln('Hasil DIV : ', (a DIV b), ' dengan sisa MOD : ', (a MOD b));
                    end
                    else
                        writeln('Error: DIV/MOD dengan nol tidak diperbolehkan.');
                end;
            else
                begin
                    writeln('Pilihan tidak valid.');
                    
                end;
        end;

        write('Apakah ingin melakukan perhitungan lagi? (Y/T)');
        readln(lanjut);
    until (lanjut = 'T');
end.