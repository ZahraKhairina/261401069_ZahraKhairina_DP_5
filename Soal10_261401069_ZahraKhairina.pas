program namahari;
uses crt;
var
    hari: integer;
begin
    clrscr;
    write('Masukkan nomor hari (1-7) : ');
    readln(hari);
    
    case hari of
        1: writeln('Hari ke-', hari, ' adalah Senin');
        2: writeln('Hari ke-', hari, ' adalah Selasa');
        3: writeln('Hari ke-', hari, ' adalah Rabu');
        4: writeln('Hari ke-', hari, ' adalah Kamis');
        5: writeln('Hari ke-', hari, ' adalah Jumat');
        6: writeln('Hari ke-', hari, ' adalah Sabtu');
        7: writeln('Hari ke-', hari, ' adalah Minggu');
    else
        writeln('Angka hari tidak valid. Harap masukkan angka antara 1 hingga 7.');
    end;
end.