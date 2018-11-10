program doidau;
uses crt;
(* khai bao bien *)
var idx, n, temp, count: integer;
var numbers: array[1..10000] of integer;
var myfile: text;
(* chuong trinh chinh *)
begin
    (* input *)
    assign(myfile,'doidau.inp');
    reset(myfile);
    n:=0; count:=0;
    
    while true do
    begin
        read(myfile, temp);
        if (temp = 0) then break;
        n:= n + 1;
        numbers[n]:= temp;
    end;
    close(myfile);
    (* process *)
    for idx:=1 to n-1 do
        if(numbers[idx] * numbers[idx+1] < 0) then count:= count + 1;
    (* output *)
    assign(myfile, 'doidau.out');
    rewrite(myfile);
    write(myfile, count);
    close(myfile);
end.
(* ket thuc chuong trinh chinh *)