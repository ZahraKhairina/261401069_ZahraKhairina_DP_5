program deretangka;
uses crt;
var
    n, i: integer;
    kategori: string;
begin
    clrscr;
    write('Masukkan batas perulangan: ');
    readln(n);
    writeln('Pilih kategori deret angka:');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Masukkan angka pilihan (1 atau 2): ');
    readln(kategori);

    i := 1;
    while (i <= n) do
    begin
        if (kategori = '1') and (i mod 2 = 0) then
        begin
            i := i + 1;
            continue;
        end
        else if (kategori = '2') and (i mod 2 = 1) then
        begin
            i := i + 1;
            continue;
        end
        else if (i mod 5 = 0) then
        begin
            i := i + 1;
            continue;
        end;
        writeln(i);
        i := i + 1;

    end;
end.