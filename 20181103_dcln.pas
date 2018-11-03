program DCLN;
uses crt;

(*Khai bao bien*)
var idx, n: integer;
var numbers : array of integer;
var myfile: text;
var max_sum, max_s, max_e, s, e, temp_sum : integer;
(*Chuong trinh chinh*)
begin
    // input
    assign(myfile, 'DCLN.txt');
    reset(myfile); // che do doc file
    while not eof(myfile) do
    begin
        readln(myfile, n);
        setlength(numbers, n);
        for idx:=0 to n-1 do
            read(myfile, numbers[idx]);
        break;
    end;
    close(myfile);
    
    max_sum:= numbers[0];
    max_s:=0;
    max_e:=0;

    // process
    for s:=0 to n-1 do // xet cac day bat dau tu 0
    begin 
        temp_sum:=0; // tong cua 1 day con bat dau tu s
        for e:=s to n-1 do // day bat dau tu s ket thuc o e
        begin
            temp_sum:= temp_sum + numbers[e];
            if (temp_sum > max_sum) then
            begin
                max_sum:= temp_sum;
                max_s:=s;
                max_e:=e;
            end;
        end;
    end;

    writeln('Day con lon nhat la ');
    for idx:= max_s to max_e do
        write(numbers[idx], ' ');
    write('co tong la ', max_sum);
    readkey;
end.
