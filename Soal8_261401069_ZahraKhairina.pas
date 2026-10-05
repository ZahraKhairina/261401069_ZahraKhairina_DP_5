program gajikaryawan;
uses crt;
var 
    gajipokok, jamkerja, gajilembur, bonus, totalgaji: Longint; // Karena nilai gaji minimal 1500000
    golongan: char;
begin
    write('Masukkan golongan gaji karyawan (A/B/C) :');
    readln(golongan);
    
    write('Masukkan total jam kerja per minggu : ');
    readln(jamkerja);
    bonus := 0;
    gajipokok := 0;
    
    if jamkerja < 40 then
        begin
            writeln('Jam kerja berada di bawah standar');
            halt;
        end;
    
    case golongan of
        'A' : 
        begin
            gajipokok := 1500000;
            if jamkerja > 40 then
            gajilembur := 20000*(jamkerja - 40);
            bonus := 0;
        end;
        'B' :
        begin
            gajipokok := 2000000;
            if jamkerja > 40 then
            gajilembur := 20000*(jamkerja - 40);
            bonus := 0;
        end;
        'C' :
        begin
            gajipokok := 2500000;
            gajilembur := 20000*(jamkerja - 40);
            if jamkerja > 50 then
            bonus := 100000;
        end;
        
    end;
    
    writeln('Gaji pokok : ', gajipokok);
    writeln('Gaji lembur : ', gajilembur);
    writeln('Bonus : ', bonus);
    writeln('Total gaji : ', gajipokok + gajilembur + bonus);
end.