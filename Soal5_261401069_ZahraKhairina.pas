program rekapirulasinilai;
uses crt;
var
    M, N, i, j, lulus, tidaklulus: integer;
    nilai: real;
    totalNilai, rataRata: real;
begin
    clrscr;
    write('Masukkan jumlah mahasiswa: ');
    readln(M);
    lulus := 0;
    tidaklulus := 0;

    write('Masukkan jumlah mata kuliah mahasiswa : ');
    readln(N);

    for i := 1 to M do
    begin
        
        totalNilai := 0; // reset totalNilai untuk setiap mahasiswa
        writeln;
        
        writeln('Masukkan nilai mahasiswa ke-', i);
        
        for j := 1 to N do
        begin
            write('Nilai mata kuliah ke-', j, ': ');
            readln(nilai);
            totalNilai := totalNilai + nilai;
        end;
        rataRata := totalNilai / N;
        if rataRata >= 65 then
        begin
            lulus := lulus + 1;
            writeln('Rata-rata nilai mahasiswa ke-', i, ': ', rataRata:0:2, ' (Lulus)')
        end
        else
        begin
            tidaklulus := tidaklulus + 1;
            writeln('Rata-rata nilai mahasiswa ke-', i, ': ', rataRata:0:2, ' (Tidak Lulus)')
        end;
        
    end;
    writeln;
    writeln('Jumlah mahasiswa yang lulus: ', lulus);
    writeln('Jumlah mahasiswa yang tidak lulus: ', tidaklulus);
end.