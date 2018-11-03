(*
Bài toán tìm UCLN của n số là gì ?
Bài toán con: UCLN của 2 số a và b là gì ?

Kiến thức: UCLN(a,b) = UCLN(b,r) với r là số dư khi chia a cho b (a > b)

Lặp lại cho đến khi nào b = 0
    + Tính r là phần dư của a chia b
    + UCLN(a,b) = UCLN(b,r)
    Đi tìm UCLN(b,r) bằng cách đổi a=b và b=r
Kết thúc vòng lặp thì a=UCLN và b=0
*)

program UCLN;
uses crt;

(*Function UCLN va BCNN*)
function UCLN(a, b:integer):integer;
var r:integer;
begin
    a:= abs(a);
    b:= abs(b);
    while b <> 0 do
    begin
        r:= a mod b;
        a:= b;
        b:= r;
    end;
    UCLN:=a;
end;

function BCNN(a,b: integer):integer;
var result: integer;
begin
    if (UCLN(a,b) <> 0) then result:= (a div UCLN(a,b)) * b
    else result:= 0;
    BCNN:= result;
end;

(*Khai bao bien*)
var idx, r, n: integer;
var numbers : array of integer;
var myfile: text;
(*Chuong trinh chinh*)
begin
    (*File UCLN se co 2 dong*)
    assign(myfile, 'ucln.txt');
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
    
    r := UCLN(numbers[0], numbers[1]);;
    for idx:= 2 to n-1 do
    begin
        r:= UCLN(r, numbers[idx]);
    end;
    writeln('UCLN=', r);
    readkey;
end.
