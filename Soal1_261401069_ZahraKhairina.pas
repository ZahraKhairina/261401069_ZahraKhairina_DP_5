program totalbelanja;
uses crt;
var
    n, i : integer;
    total, harga, diskon: real;
begin
    clrscr;
    total := 0;

    // Masukkan banyak barang yang dibelanjakan
    write('Masukkan jumlah barang: ');
    readln(n);

    // Melakukan iterasi untuk menghitung total harga belanja
    for i := 1 to n do
        begin
        write('Masukkan harga barang ke-', i, ': ');
        readln(harga);
        total := total + harga;
        end;
    
    // Menentukan diskon untuk tiap total harga
    diskon := 0;
    if (total < 100000) then
        diskon := 0
    else if (100000 <= total) and (total <= 500000 )then
        diskon := 0.10
    else
        diskon := 0.20;

    // Membuat output rincian belanja
    writeln;
    writeln('Rincian Belanja');
    writeln('Total sebelum diskon : Rp', total:0:2);
    writeln('Besar diskon         : ', (diskon * 100):0:0, '%'); 
    writeln('Total bayar akhir    : Rp', (total-(total*diskon)):0:2);

end.

