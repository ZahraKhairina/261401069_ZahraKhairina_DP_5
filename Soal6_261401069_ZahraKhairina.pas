program nilaiakhirmatkul;
uses crt;
var
    nilaitugas, uts, uas, nilaiakhir, kehadiran: real;

begin
    clrscr;
    write('Masukkan nilai tugas: ');
    readln(nilaitugas);
    write('Masukkan nilai UTS: ');
    readln(uts);
    write('Masukkan nilai UAS: ');
    readln(uas);
    nilaiakhir := (nilaitugas * 0.3) + (uts * 0.3) + (uas * 0.4);
    write('Masukkan persentase kehadiran (dalam persen): ');
    readln(kehadiran);

    if (kehadiran >= 80) and (nilaiakhir >= 60) then
    begin
        if (nilaiakhir >= 85) then
            writeln('Selamat, Anda lulus dengan predikat A.')
        else if (nilaiakhir >= 75) then
            writeln('Selamat, Anda lulus dengan predikat B.')
        else if (nilaiakhir >= 60) then
            writeln('Selamat, Anda lulus dengan predikat C.')
        else if (nilaiakhir >= 50) then
            writeln('Selamat, Anda lulus dengan predikat D.')
        else
            writeln('Selamat, Anda lulus dengan predikat E.');
    end
    else
    begin
        writeln('Maaf, Anda tidak lulus mata kuliah ini.');
    end;

end.
    