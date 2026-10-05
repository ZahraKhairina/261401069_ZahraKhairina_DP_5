program verifikasikatasandi;
uses crt;
var
    gagal: integer;
    password, s: string;
begin
    clrscr;
    // Misal password yang benar adalah 'pascal123'
    password := 'pascal123';
    gagal := 0;

    // repeat-until dan break untuk meminta input password hingga benar atau gagal 3 kali
    repeat
        write('Masukkan password : ');
        readln(s);
        if s = password then
            begin
            writeln('Login Berhasil! Selamat Datang');
            break; // keluar dari loop jika password benar
            end
        else
            begin
            writeln('Password salah. Coba lagi.');
            gagal := gagal + 1;
            end;
    until (gagal = 2);

    if gagal = 2 then
    begin
        write('Masukkan password : ');
        readln(s);
        if s = password then
            writeln('Login Berhasil! Selamat Datang')
        else
            begin
            writeln('Password salah.');
            writeln('Akses Ditolak! Akun Terkunci.');
            end;
    end;
    
end.