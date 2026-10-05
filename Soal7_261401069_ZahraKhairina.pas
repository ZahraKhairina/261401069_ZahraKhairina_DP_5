program parkir;
uses crt;
var 
    tipe: char;
    durasi, totalharga: integer;
begin
    clrscr;
    writeln('Pilih kode jenis kendaraan (M/K/B) ');
    writeln('1. Mobil (M)');
    writeln('2. Motor (K)');
    writeln('3. Bus (B)');
    write('Masukkan kode : ');
    readln(tipe);
    write('Masukkan durasi parkir (dalam jam) : ');
    readln(durasi);
    
    
    if (durasi > 10) then 
    begin
        case tipe of
            'M' : writeln('Tarif parkir : 30000');
            'K' : writeln('Tarif parkir : 10000');
            'B' : writeln('Tarif parkir : 50000');
        end;
    end
    else
    begin
        case tipe of 
            'M' : writeln('Tarif parkir : ', (3000*(durasi-1) + 5000));
            'K' : writeln('Tarif parkir : ', (1000*(durasi-1) + 2000));
            'B' : writeln('Tarif parkir : ', (5000*(durasi-1) + 10000));
            end;
    end;
    
end.