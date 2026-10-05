program menentukanKabisat;
uses crt;
var
    tahun, bulan: integer;
    kabisat: boolean;
begin
    clrscr;
    write('Masukkan tahun : ');
    readln(tahun);
    write('Masukkan bulan (1-12) : ');
    readln(bulan);
    
    if (tahun mod 4 = 0) and ((tahun mod 100 <> 0) or (tahun mod 400 = 0)) then
        kabisat := true
    else
        kabisat := false;
    
    case bulan of
        1, 3, 5, 7, 8, 10, 12: writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah 31 hari.');
        4, 6, 9, 11: writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah 30 hari.');
        2: 
            if kabisat then
                writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah 29 hari.')
            else
                writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah 28 hari.');
    end;
end.